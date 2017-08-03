#pragma once
 
#include "hello_world.hpp"
 
namespace hwsdk {
    
    class HelloWorldImpl : public hwsdk::HelloWorld {
        
    public:
        
        // Constructor
        HelloWorldImpl();
        
        // Our method that returns a string
        std::string get_hello_world(const std::string & message);
        
    };
    
}
