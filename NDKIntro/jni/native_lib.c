#include <ndk_NDK_Methods.h>

JNIEXPORT jstring JNICALL Java_ndk_NDK_1Methods_SayHelo
  (JNIEnv *env, jobject thiz )
 {
	  return (*env)->NewStringUTF(env, "Hello from JNI!");
 }
