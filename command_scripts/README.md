
## Shell教程
### 变量
- 变量直接声明即可使用，如`name=小不点`，输出则`"$name"`


## 脚本执行方式
- 脚本直接拖进控制台回车，如`/Users/caochang/xbd/command/adb_activity_top.sh`
- 进入到脚本所在文件夹，执行./xxx.sh，如`./adb_activity_top.sh`

## 添加进环境变量使用别名执行
- 首先vim打开配置环境变量到文件:`vim ~/.bash_profile`
- 末尾添加指向脚本的alis，如`alias activity_top="/Users/caochang/xbd/command/adb_activity_top.sh"`
- 然后按esc，再输入`:wq`保存退出，如果不修改输入`:q!`直接退出
- 最后执行`source ~/.bash_profile`使环境变量生效
- 然后就可以在任何路径下直接使用`activity_top`别名代替执行该脚本了


## 参考链接
- [一篇文章学懂Shell脚本](https://www.jianshu.com/p/71cb62f08768)
