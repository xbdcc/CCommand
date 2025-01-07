hdc各种实用命令收集

若连接多台使用hdc -t操作,如
`hdc -t 127.0.0.1:5555 shell uinput -K -d 2067 -u 2067`

通过无线连接ADB:
- wifi连接:`hdc tconn 192.168.0.123:8710`
- 断开连接:`hdc tconn 192.168.0.123:8710 -remove`

## 操控设备相关
### 设备重启
hdc shell reboot
### 截图
hdc shell snapshot_display
### 导出文件
hdc file recv /data/local/tmp/test111.jpeg
### 发送文件
hdc file send local remote

### 按右键
hdc shell uinput -K -d 2015 -u 2015
### 按tab键
hdc shell uinput -K -d 2049 -u 2049
### 按菜单键
hdc shell uinput -K -d 2067 -u 2067
### 按返回键
hdc shell uinput -K -d 2 -u 2

## 应用相关
### 退出应用
hdc shell aa force-stop com.carlos.charmony
### 启动应用
hdc shell aa start -a EntryAbility -b com.carlos.charmony
### 卸载应用
hdc uninstall com.carlos.charmony

### 清除缓存
hdc shell bm clean -c -n com.funshion.launcher
### 清除数据
hdc shell bm clean -d -n com.funshion.launcher

## 获取系统参数
### 获取分辨率
hdc shell hidumper -s RenderService -a screen

### 获取wlanip
hdc shell ip address show

### 获取有线mac
hdc shell cat /sys/class/net/eth0/address

### 查看系统是32位或64位
hdc shell getconf LONG_BIT
objdump -f test.so(查看so库是32位还是64位)


## hvigorw命令
### 编译命令
hvigorw assembleHap --mode module -p product=monitor -p module=entry@free -p buildMode=debug -p key=value
