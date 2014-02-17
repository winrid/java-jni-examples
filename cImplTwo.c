/* File: cImplTwo.c
 * Implements nativeTwo in NativeMethods
 */
#include <stdio.h>
#include "NativeMethods.h"
JNIEXPORT void JNICALL Java_NativeMethods_nativeTwo (JNIEnv* env, jobject thisObj)
{
	printf("hello from second method\n");
}