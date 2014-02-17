# Simple Java JNI Examples

Documentation around JNI is hard to find, and once found takes a lot of head banging to get a simple jni code to run.
Hopefully this will help those trying to get a start with jni coding. Will be adding more examples as I dig deeper.

## Installation and Run
You can clone the repository wherever you want.

```bash
git clone https://github.com/shivprak/java-jni-examples.git
```

Make the run scripts executable `chmod +x compile-*`. Depending on your whether you are on a mac or *nix system, run the appropriate script. For example if you are on a Mac OSV system, then do the following on your console.

```bash
./compile-mac.sh
```

## Understanding the code

I hope to document every example through the run script. You will find my comments there.

## References

* Thanks to whoever published [this document](http://homepage.cs.uiowa.edu/~slonnegr/wpj/JNI.pdf), helped a lot. First example shamelessly copied from this.
* Helped me figure out [`.jnilib` is the extension to use mac osx](http://mrjoelkemp.com/2012/01/getting-started-with-jni-and-c-on-osx-lion/).
* http://www3.ntu.edu.sg/home/ehchua/programming/java/JavaNativeInterface.html
* http://www.javaworld.com/article/2077554/learn-java/java-tip-54--returning-data-in-reference-arguments-via-jni.html
* http://home.pacifier.com/~mmead/jni/cs510ajp/exercises/index.html#Introduction