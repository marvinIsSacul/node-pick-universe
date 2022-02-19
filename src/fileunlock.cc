#include <stdlib.h>
#include <string.h>

#include "intcall.h"
#include "convert.h"
#include "universe.h"

Napi::Value Universe::FileUnlock(const Napi::CallbackInfo& info) {
    setlocale(LC_ALL, "en_US.iso88591");

    Napi::Env env = info.Env();

    if (this->_session_id == 0) {
        char error[100];
        snprintf(error, 100, "Session has not been started.\n");
        Napi::TypeError::New(env, error).ThrowAsJavaScriptException();
        return env.Null();
    }

    long file_id = info[0].As<Napi::Number>().Uint32Value();
    long status_func;
    long code;

    ic_fileunlock(&file_id, &status_func, &code);

    if (code != 0) {
        char error[100];
        snprintf(error, 100, "Error in unlocking the file. Code: %ld", code);
        Napi::TypeError::New(env, error).ThrowAsJavaScriptException();
        return env.Null();
    }

    if (status_func != 0) {
        char error[100];
        snprintf(error, 100, "This file wasn't locked.");
        Napi::TypeError::New(env, error).ThrowAsJavaScriptException();
        return env.Null();

    }

    return env.Null();
}