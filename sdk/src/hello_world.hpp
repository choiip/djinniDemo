// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from helloworld.djinni

#pragma once

#include <memory>
#include <string>

namespace hwsdk {

class HelloWorld {
public:
    virtual ~HelloWorld() {}

    static std::shared_ptr<HelloWorld> create();

    virtual std::string get_hello_world(const std::string & message) = 0;
};

}  // namespace hwsdk
