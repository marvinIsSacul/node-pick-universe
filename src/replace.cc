#include <stdlib.h>
#include <string.h>

#include "intcall.h"
#include "convert.h"
#include "universe.h"

Napi::Value Universe::Replace(const Napi::CallbackInfo& info) {
    setlocale(LC_ALL, "en_US.iso88591");

    Napi::Env env = info.Env();

    if (this->_session_id == 0) {
        Napi::TypeError::New(env, "Session has not been started.").ThrowAsJavaScriptException();
        return env.Null(); 
    }

    std::string record_string = info[0].ToString().Utf8Value();
    std::string param = UTF8toISO8859_1(record_string.c_str());
    const char *record = param.c_str();
    long record_len = strlen(record);

    long max_buffer_size = record_len*2;
    char* buffer = (char*)malloc(max_buffer_size * sizeof(char));
    long buffer_len = record_len;
    memcpy(buffer, record, record_len);

    std::string replace_string = info[1].ToString().Utf8Value();
    std::string replace_param = UTF8toISO8859_1(replace_string.c_str());
    const char *replace = replace_param.c_str();
    long replace_len = strlen(replace);

    long field_pos = 0;
    if (info.Length() > 2) {
        field_pos = info[2].As<Napi::Number>().Uint32Value();
    }

    long value_pos = 0;
    if (info.Length() > 3) {
        value_pos = info[3].As<Napi::Number>().Uint32Value();
    }

    long subvalue_pos = 0;
    if (info.Length() > 4) {
        subvalue_pos = info[4].As<Napi::Number>().Uint32Value();
    }

    long code;
    do {
        ic_replace((char*)buffer, &max_buffer_size, &buffer_len, &field_pos, &value_pos, & subvalue_pos, (char*)replace, &replace_len, &code);
        if (code == IE_BTS) {
            max_buffer_size = max_buffer_size * 2;
            free(buffer);
            buffer = (char*)malloc(max_buffer_size * sizeof(char));
            memcpy(buffer, record, record_len);
        }
    } while (code == IE_BTS);

    if (code != 0) {
        free(buffer);
        char error[100];
        snprintf(error, 100, "Error in removing field. Code: %ld", code);
        Napi::TypeError::New(env, error).ThrowAsJavaScriptException();
        return env.Null();
    }

    unsigned char * out = iso_8859_1_to_utf8((unsigned char*)buffer, buffer_len);
    free(buffer);
    Napi::String data = Napi::String::New(env, (char*)out);
    free(out);
    return data;
}
