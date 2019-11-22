# AdbCommand
Adb各种实用命令收集

若连接多台使用adb -s操作。
windows下使用findstr，linux和mac下使用grep。

通过无线连接ADB:
- 插上手机输入命令：adb tcpip 5555
- 输入连接命令：adb connect 172.16.7.204:5555

## 设备连接操作：
### adb关闭：
adb kill-server

### adb开启：
adb start-server

### adb设备查看：
adb devices

### adb查看手机网络
adb shell ifconfig wlan0

### 从电脑上传文件到手机上：
adb push /Users/caochang/apk/BBox.apk /sdcard/xbd/BBox.apk

### 从手机上发送文件到电脑上：
adb pull /sdcard/xbd/BBox.apk /Users/caochang/apk/BBox.apk


## 获取系统参数：
### 获取IMEI：
adb shell dumpsys iphonesubinfo

### 获取手机品牌：
adb -d shell getprop ro.product.brand

### 获取手机型号：
adb -d shell getprop ro.product.model

### 获取手机系统SDK版本号：
adb shell getprop ro.build.version.sdk

### 获取手机分辨率：
adb shell wm size

### 修改手机分辨率：
adb shell wm size 1080*1920

### 获取手机dpi：
adb shell wm density 

### 修改手机dpi：
adb shell wm density 480

### 获取手机cpu架构：
adb shell getprop ro.product.cpu.abilist(Android5.0系统之后)    
adb shell getprop ro.product.cpu.abi(Android5.0系统之前)

## 系统设置相关：
### 获取屏幕休眠时间：
adb shell settings get system screen_off_timeout

### 查看默认短信应用：
adb shell settings get secure sms_default_application

### 修改默认短信应用：
adb shell settings put secure sms_default_application com.carlos.sms

### 获取屏幕熄灭状态：
adb shell "dumpsys window policy | grep mScreenOnFully"
<br>
adb shell dumpsys power | findstr "Display Power:state="

## 性能相关：
### 冷热启动耗时时间：
adb shell am start -W com.UCMobile/com.uc.browser.InnerUCMobile

### 应用cpu占用率：
adb shell dumpsys cpuinfo| find "com.sec.android.app.launcher"

### 应用memory：
adb shell "dumpsys meminfo | grep com.carlos.bbox

### 通过包名获取pid：
adb shell "ps | grep com.aspire.agent"

### 通过pid获取uid：
adb shell cat /proc/6094/status

### 通过uid获取上行流量：
adb shell "cat /proc/uid_stat/10189/tcp_snd"

### 通过uid获取下行流量：
adb shell "cat /proc/uid_stat/11110/tcp_rcv"

### 导出crash日志：
adb shell dumpsys dropbox --print >>crashlog_$(date +%Y%m%d%H%M).txt

## 应用相关：
### 显示已安装应用：
adb shell pm list packages [-com.carlos.bbox]
### 清除应用数据：
adb shell pm clear com.carlos.bbox
### 卸载应用：
adb uninstall com.carlos.bbox
### 显式安装应用：
adb install (-r强制安装) /Users/caochang/apk/BBox.apk
### 隐式安装应用：
adb shell pm install (-r) /sdcard/xbd/BBox.apk
### 无弹框安装应用：
adb install-multiple -r /Users/caochang/apk/BBox.apk
### 发送广播：
adb shell am broadcast -a com.carlos.bbox -e port 8888
### 启动服务：
adb shell am startservice com.carlos.bbox/com.carlos.bbox.MyService 
### 启动应用：
adb shell am start -n com.carlos.bbox/.MainActivity
### 停止应用：
adb shell am froce-stop com.carlos.bbox
### 查看顶层Activity类名：
- 8.0以下命令
adb shell dumpsys activity | grep "mFocusedActivity"
- 8.0以上命令
adb shell dumpsys activity | grep "mResumedActivity"
## Monkey相关：
### 点击应用1000次：
adb shell monkey -p com.codemao.dan -v 1000
### 每隔1s点一次：
adb shell monkey -p com.codemao.dan --throttle 1000 20

## 操控手机相关：
### 点击坐标点：
adb shell input tap 250 250
### 输入文本
adb shell input text hello world

### 截图：
adb shell screencap -p /sdcard/a.png


## Android工程模式拨号指令
### 进入工程模式选项
- *#*#2846579#*#*
- *#*#6484#*#*
- *#*#6130#*#*
- *#*#4636#*#*
- *#*#14789632#*#*
- *#*#1673495#*#*

### 查看设备信息
#### 查询手机串号（IMEI）
*#06#

### 其他
首先进入操作系统的拨号界面，输入指令码即可快速进入Android的工程测试模式。

常见机型进入工程模式的指令码是：

- 华为：*#*#121314#*#*。
- 努比亚：*#8604#。
- 魅族：*#*#3646633#*#*。
- 小米：*#*#6484#*#* 或 *#*#64663#*#*。
- 三星：*#0*#、HTC：*#*#3424#*#*。
- 联想：####1111#。
- 中兴：*983*3640#。
- 索尼：*#*#7378423#*#*。
- vivo：*#558#。
- OPPO：*#36446337#。
- 一加：*#36446337#。
- 乐视：*#*#3646633#*#*。
- ZUK：*#*#1111#*#*。
- Moto：*#*#372#*#*。
- LG：3485#*手机型号#。
- 酷派：*20060606#。
- 360手机：*20121220#。

## 各种手机日志开启方法
- vivo：拨号键盘输入*#*#112#*#*，Log开关——开
- 华为：拨号键盘输入*#*#2846579#*#*，后台设置——AP LOG设置——打开

## 其他问题
### adb pull data/data下文件失败
在某些手机上进入到package文件夹下执行ls命令会出现以下问题,参考链接：[opendir failed, Permission denied](https://www.jianshu.com/p/359780457fa2?utm_campaign=maleskine&utm_content=note&utm_medium=seo_notes&utm_source=recommendation)
```
opendir failed, Permission denied
```
此时，可先run-as your-package命令，如
```
run-as com.carlos.test
```
### adb pull data/anr失败
```
 remote open failed: Permission denied
```
可用adb bugreport命令在当前路径下生成压缩包分析，参考链接:[调试系列2：bugreport实战篇](https://www.jianshu.com/p/1ada78f09336)
