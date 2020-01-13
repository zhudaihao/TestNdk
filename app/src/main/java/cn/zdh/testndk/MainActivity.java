package cn.zdh.testndk;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class MainActivity extends AppCompatActivity {

    //使用第三或者自己打包的库
    //1配置需要的库 TODO 注意MyLoginJar是.mk里面的第3步定义的
    static {
        System.loadLibrary("MyLoginJar");
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //4调用native函数
        getMyLibMethod();
    }


    //2 定义一个native函数
    public native void getMyLibMethod();

}
