#! /usr/bin/env bash

base_dir=$(cd "`dirname "0"`" && pwd)
cpp_out="$base_dir/sdk/src"
jni_out="$base_dir/android/bridge-android/src/main/jni"
objc_out="$base_dir/ios/bridge-ios/src"
java_out="$base_dir/android/bridge-android/src/main/java/com/m800/hwsdk"
java_package="com.m800.hwsdk"
namespace="hwsdk"
objc_prefix="HW"
djinni_file="helloworld.djinni"

deps/djinni/src/run \
   --java-out $java_out \
   --java-package $java_package \
   --ident-java-field mFooBar \
   \
   --cpp-out $cpp_out \
   --cpp-namespace $namespace \
   \
   --jni-out $jni_out \
   --ident-jni-class NativeFooBar \
   --ident-jni-file NativeFooBar \
   \
   --objc-out $objc_out \
   --objc-type-prefix $objc_prefix \
   \
   --objcpp-out $objc_out \
   \
   --idl $djinni_file
   