# 获取当前栈顶Activity
# 8.0及以上：adb shell dumpsys activity | grep "mResumedActivity"
# 8.0以下：adb shell dumpsys activity | grep "mFocusedActivity"
# 先获取Android系统版本号，然后执行对应的命令


# 获取手机系统版本
android_version=$(adb shell getprop ro.build.version.release)
if [ ! -n "$android_version" ]; then
  echo "请连接一台手机"
  exit
fi
echo Android系统版本号是:${android_version}

# 获取栈顶Activity
if [ $(echo "$android_version>=8" | bc) -eq 1 ]; then
  activity=$(adb shell dumpsys activity | grep "mResumedActivity")
else
  activity=$(adb shell dumpsys activity | grep "mFocusedActivity")
fi
echo "$activity"