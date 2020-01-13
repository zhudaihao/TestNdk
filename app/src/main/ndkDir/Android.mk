#1源文件的位置， 宏函数my-dir 返回当前目录（包含 Android.mk 文件本身的目录）的路径 （固定写法）
LOCAL_PATH := $(call my-dir)

#2清理 （固定写法）
include $(CLEAR_VARS)


#TODO 配置 第三或者自己打包的库

#1 添加库名 (我添加的库libget.so  libget,a  真正库名是去掉lib后的名字)
LOCAL_MODULE := get

#2配置库的路径 配置路径出现报错 建议配置全路径
#静态库路径
LOCAL_SRC_FILES := E:\dongnan\TeamTalk-master\TestNdk\app\src\main\ndkDir\libget.a
#动态库路径
# LOCAL_SRC_FILES := E:\dongnan\TeamTalk-master\TestNdk\app\src\main\ndkDir\libget.so

#3 配置导入库类型 静态库还是动态库
#静态库
include $(PREBUILT_STATIC_LIBRARY)
#动态库
# include $(PREBUILT_SHARED_LIBRARY)

#4清理
include $(CLEAR_VARS)

#5链接
# 静态库的链接 （get就是需要连接的库名）
LOCAL_STATIC_LIBRARIES := get
# 动态库链接
#LOCAL_SHARED_LIBRARIES := get

#TODO 导入第三方库或者自己打包的库步骤就完了 （注意新建的源文件要在下面第4步添加）


# 导入系统 log库
#LOCAL_LDLIBS := -llog
LOCAL_LDLIBS    := -lm -llog



#3存储你要构建的模块的名称 每个模块名称必须唯一 且不含任何空格
#如果模块名称的开通已是 lib 则构建系统不含附加额外的前缀 lib 而是按原样采用模块名称 并添加.so 扩展名
#最后mk会构建出libMyLoginJar.so
LOCAL_MODULE :=MyLoginJar



#4添加源文件，文件之间以\连接 注意空格 （.h是申明文件 .c .cpp是源文件）
#TODO 注意 提示path 为NULL 建议使用全路径
#TODO 注意 新建的源文件 都要在这里添加
LOCAL_SRC_FILES := E:\dongnan\TeamTalk-master\TestNdk\app\src\main\jni\Login.c \
E:\dongnan\TeamTalk-master\TestNdk\app\src\main\jni\Register.c \
E:\dongnan\TeamTalk-master\TestNdk\app\src\main\jni\MyLoginJar.c






#5构建静态库 还是动态库

#静态库 .a
#include $(BUILD_STATIC_LIBRARY)

#动态库 .so
include $(BUILD_SHARED_LIBRARY)