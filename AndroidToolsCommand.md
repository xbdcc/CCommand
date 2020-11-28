### Systrace
官方教程：https://developer.android.google.cn/studio/profile/systrace/
#### 命令使用
- 为应用生成 HTML 报告
如果未指定任何类别或选项，systrace 会生成一份包含所有可用类别并使用默认设置的报告。可用类别取决于您所使用的已连接设备。
```
python systrace.py [options] [categories]
```
此类别列表是大多数设备的合理默认列表
```
python systrace.py -o mynewtrace.html sched freq idle am wm gfx view binder_driver hal dalvik camera input res
```

- 查看已连接设备支持的类别列表
```
python systrace.py --list-categories
```
- python sdk/platform-tools/systrace/systrace.py 
- python systrace.py --time=10 -o mytrace.html sched gfx view wm

### 参考链接
[Android如何使用mapping文件，定位线上bug](https://blog.csdn.net/lzq520210/article/details/108096809)

### 问题收集
#### 浏览器打开Trace失败
浏览器打开生成的.html的trace文件时弹出`Import error`框提示如下:
```
Unable to select a master clock domain because no path can be found from "SYSTRACE" to "LINUX_FTRACE_GLOBAL".
```
解决方法：使用Chrome的tracing插件打开`chrome://tracing/`
