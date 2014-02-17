/* File: cImplOne.c
 * Implements nativeOne in NativeMethods
 */
#include <stdio.h>
#include "NativeMethods.h"
JNIEXPORT void JNICALL Java_NativeMethods_nativeOne (JNIEnv* env, jobject thisObj)
{
	printf("hello from first method\n");
}