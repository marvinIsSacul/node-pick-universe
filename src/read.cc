#include <stdlib.h>
#include <string.h>

#include "intcall.h"
#include "convert.h"
#include "universe.h"

Napi::Value Universe::Read(const Napi::CallbackInfo& info) {
    setlocale(LC_ALL, "en_US.iso88591");

    Napi::Env env = info.Env();

    if (this->_session_id == 0) {
        Napi::TypeError::New(env, "Session has not been started.").ThrowAsJavaScriptException();
        return env.Null(); 
    }

    long file_id = info[1].As<Napi::Number>().Uint32Value();

    long lock = IK_READ;
    long status_func;
    long code;

    std::string record_id = info[0].ToString().Utf8Value();
    long id_len = record_id.length();
    long max_rec_size = 500;

    char* record = (char*)malloc(max_rec_size * sizeof(char));
    long record_len = 0;

    do {
        ic_read(&file_id, &lock, record_id.data(), &id_len, record, &max_rec_size, &record_len, &status_func, &code);

        if (code == IE_BTS) {
            free(record);
            max_rec_size = max_rec_size * 2;
            record = (char*)malloc(max_rec_size * sizeof(char));

        } else if (status_func != 0) {
            free(record);
            std::string error = "Record is locked. Record (" + record_id + ")";
            Napi::TypeError::New(env, error).ThrowAsJavaScriptException();
            return env.Null();

        } else if (record == NULL && record_len == 0) {
            std::string error = "Record does not exist. Record (" + record_id + ")";
            Napi::TypeError::New(env, error).ThrowAsJavaScriptException();
            return env.Null();
        }
    } while (code == IE_BTS);

    if (code != 0) {
        free(record);
        Napi::TypeError::New(env, "Failed to read record").ThrowAsJavaScriptException();
        return env.Null();
    }

    unsigned char * out = iso_8859_1_to_utf8((unsigned char*)record, record_len);
    free(record);

    Napi::String data = Napi::String::New(env, (char*)out);
    free(out);
    return data;
}
