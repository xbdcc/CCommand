

## 实用命令

### 帮助命令
`--help`，如`ls --help`

### 查看命令位置
`which`，如`which cat`

### 目录相关  
#### 切换目录
- `cd /` 切换到根目录
- `cd /usr` 切换到根目录下的usr目录
- `cd ../` 或 `cd ..` 切换到上一级目录
- `cd ~` 切换到home目录 
- `cd -` 切换到上次访问的目录

#### 目录查看
- `ls` 查看没有隐藏的文件和文件夹
- `ls -a` 查看当前目录下的所有目录和文件（包括隐藏的文件）
- `ls -l` 或 `ll` 查看没有隐藏的文件和文件夹的详细信息
- `ls /dir` 查看指定目录下的所有目录和文件，如：`ls /usr`

### 文件相关

#### 执行文件
- `./file` 直接执行，如进入到文件夹下有`adb_activity_top.sh`文件，执行`./adb_activity_top.sh`
- `sudo ./file` 临时Root权限执行，

#### 文件权限
可以先执行`ls -l`查看当前文件夹下的文件，显示结果如下：
```
-rw-rw-rw-@ 1 caochang  staff    49B Jul  5 11:42 adb_activity_top.sh
-rwxr-x--x 1 caochang  staff    1257 Jul 18 22:53 xbd
```
如`rwxr-xr-x`分别为当前用户具有`rwx`读写执行权限`4+2+1`，用户组具有`r-x`读执行权限`4+1`，`--x`执行权限`1`
- `chmod 777 xbd` 则将权限改为`-rwxrwxrwx`
- `chmod +x adb_activity_top.sh` 给`adb_activity_top.sh`添加执行权限

#### 重命名或移动目录
`mv`命令：
```
usage: mv [-f | -i | -n] [-v] source target
       mv [-f | -i | -n] [-v] source ... directory
```
- 如：mv xbd.md xbd.zip

## 参考链接
- [Linux常用命令](https://blog.csdn.net/luansj/article/details/97272672)
