#!/bin/bash 

# remove files from previous run. 
rm *.jnilib *.h *.class
echo "Deleted files from previos run."

echo "-------------------------------"
javac NativeMethods.java Main.java
echo "Java files compiled."

# Create header files
javah -jni NativeMethods
echo "Header file created."

# May need to set this varible if you get "Exception in thread "main" java.lang.UnsatisfiedLinkError"
# Set it to path where the .jnilib is located.
# export LD_LIBRARY_PATH=.

# Options
# -I provide path to JAVA_HOME/include directory. I have hardcoded this path, verify this path for your own system. 
#    Make sure the include direcory contains the files jni.h & jni_md.h.
# -o filename should be prefixed with 'lib' and extension should be .jnilib for macosx.
g++ -dynamiclib -I/Library/Java/JavaVirtualMachines/1.6.0_51-b11-457.jdk/Contents/Home/include cImplOne.c cImplTwo.c -o libNativeLib.jnilib
echo "Shared library created."
echo "-------------------------------"

# All done.
echo "Running main."
java Main
echo "-------------------------------"