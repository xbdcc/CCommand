# AdbCommand
Adb各种实用命令收集

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
