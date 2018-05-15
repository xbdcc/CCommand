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
adb -d shell getprop ro.product.brand

### 获取手机系统SDK版本号：
adb shell getprop ro.build.version.sdk

### 获取手机分辨率：
adb shell wm size

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

## 应用相关：
### 显示已安装应用：
adb shell pm list packages com.carlos.bbox
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

## Monkey相关：
### 点击应用1000次：
adb shell monkey -p com.codemao.dan -v 1000
### 每隔1s点一次：
adb shell monkey -p com.codemao.dan --throttle 1000 20

## 操控手机相关：
### 点击坐标点：
adb shell input tap 250 250



