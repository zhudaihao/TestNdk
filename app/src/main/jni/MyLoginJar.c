#include <jni.h>
#include <android/log.h>
//调用 刚刚添加的libget库
//声明库名里面调用的函数
extern int get();


JNIEXPORT void JNICALL
Java_cn_zdh_testndk_MainActivity_getMyLibMethod(JNIEnv *env, jobject instance) {

    //3 实现函数 的逻辑代码 比如调用添加库的函数
    __android_log_print(ANDROID_LOG_DEBUG, "*ZDH", "tesegetMEthod：%d",get());

}