#自动点击Android屏幕坐标脚本

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


#根据输入的获取坐标点
while getopts ":x:y:h" opt
do
    case $opt in
        x)
        x=$OPTARG
        ;;
        y)
        y=$OPTARG
        ;;
        ?) #当有不认识的选项的时候arg为?
        #echo "未知参数"
        exit 1;;
    esac
done

#如果横纵坐标未赋值，则赋值
if [ "$x" = "" ]; then
    read -p "请输入横坐标:" x
fi
if [ "$y" = ""  ]; then
    read -p "请输入纵坐标坐标:" y
fi

read -p "回车开始点击:"


adb shell <<eof
while [ true ]; do
  echo "$(date +"%Y-%m-%d %T") 点击坐标点($x, $y)"
  input tap $x $y
#  sleep 1
done
eof
