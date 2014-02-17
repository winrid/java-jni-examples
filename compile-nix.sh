#!/bin/bash

# remove files from previous run. 
rm *.so *.h *.class
echo "Deleted files from previos run."

echo "-------------------------------"
javac NativeMethods.java Main.java
echo "Java files compiled."

# Create header files
javah -jni NativeMethods
echo "Header file created."

# May need to set this varible if you get "Exception in thread "main" java.lang.UnsatisfiedLinkError"
# Set it to path where the .so is located 
export LD_LIBRARY_PATH=.

# Options
# -I provide path to JAVA_HOME/include and JAVA_HOME/include/linux directories. I have hardcoded this path, verify this path for your own system. 
#    Make sure the include direcory contains the files jni.h & jni_md.h
# -o filename should be prefixed with 'lib' and extension should be .so for *nix os's
# -fPIC interesting read @ http://stackoverflow.com/questions/5311515/gcc-fpic-option
gcc -fPIC -I/usr/lib/jvm/java-1.7.0-openjdk-amd64/include -I/usr/lib/jvm/java-1.7.0-openjdk-amd64/include/linux -shared cImplOne.c cImplTwo.c -o libNativeLib.so
echo "Shared library created."
echo "-------------------------------"

# All done.
echo "Running main."
java Main
echo "-------------------------------"