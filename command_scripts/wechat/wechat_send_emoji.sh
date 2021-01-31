#自动发送微信表情
#测试模拟：
#第一步输入表情文字：[Fireworks]
#第二步输入发送按钮横坐标：850
#第三步输入发送按钮纵坐标：1350
#第四步输入重复次数：10
#第五步回车开始


#开启adb服务，判断adb命令是否能正常使用
result=$(adb start-server)

#得到上一条命令执行的结果，0位成功，其他为失败，如果不为0则提示失败并退出
if [ $? -ne 0 ]; then
    echo "请确保adb环境变量配置正确，再重新执行脚本"
    exit
fi

#判断是否连接设备，如果结果末尾不包含`device`则为成功连接设备，提示并退出
devices=$(adb devices)
if [[ $devices != *device ]]
then
    echo "请先连接一台Android设备，再重新执行脚本"
    exit
fi

#如果横纵坐标未赋值，则赋值
if [ "$emoji" = "" ]; then
    read -p "请输入表情文字:" emoji
fi
if [ "$x" = ""  ]; then
    read -p "请输入发送按钮横坐标:" x
fi
if [ "$y" = ""  ]; then
    read -p "请输入发送按钮纵坐标:" y
fi
if [ "$times" = ""  ]; then
    read -p "请输入次数:" times
fi

read -p "即将发送$emoji${times}次,按回车开始:"

#

:<<!
注释内容：
自动放烟花，丢炸弹等脚本。
打开微信点击表情可以看到，如下：
[烟花],[庆祝],[炸弹]
adb命令无法直接输入中文，但使用[ADBKeyBoard](https://github.com/senzhk/ADBKeyBoard)输入法可以
但我们不想再安装输入法怎么弄了，想起来了微信支持多语言，那么我们把语言改为英文看下效果：
[Fireworks],[Party],[Bomb]
!


#while [ true ]; do
#  echo "$(date +"%Y-%m-%d %T") 点击坐标点($x, $y)"
#  adb shellinput tap $x $y
#done

count=0
#小于等于次数则执行
while [ $count -lt $times ]; do
  let count++
  echo "第${count}次发送${emoji}，点击坐标点($x,$y)"
  adb shell input text $emoji
  adb shell input tap $x $y
done
