#stores the current directory location in LOCAL_PATH

#An Android.mk file must begin defining the LOCAL_PATH variable, this is where the source files are. The macro ‘my-dir’ is the path where the Android.mk file is located.
LOCAL_PATH := $(call my-dir)

#clears all variables that might be set from a previous module build 
#(observe that LOCAL_PATH is stored before a call to this)

#Since all the building and parsing is done in the same context the variables called LOCAL_XXX is globals and need to be cleared.
include $(CLEAR_VARS)

#the name of the resulting library will be native_lib-jni.so 
#(if shared) or native_lib-jni.a (if static)

#This is where you set the name used as the identifier for each module. Later used in java 
LOCAL_MODULE    := native_lib

#the source files (C/C++) that need to be build. Headers are not provided here.

#Here you add a list of the files you need to compile your module. You do not need to add headers or include files the system will take care of that for you. 
LOCAL_SRC_FILES := native_lib.c

#this ensures that make file code to build shared library becomes part of this make
include $(BUILD_SHARED_LIBRARY)