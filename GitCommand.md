## 提交修改：
### 添加所有文件
git add .
### 添加某文件
git add a.txt
### 删除某文件
git rm a.txt
### 提交文件
git commit -m "test"
### 删除远端保留本地文件
git rm --cached settings.gradle
### 删除远端文件夹保留本地文件夹
git rm -r --cached gradle
## 状态查询：
### 查询当前状态
git status
### 查询提交日志
git log

## 版本回退：
### 执行git add前执行放弃本地修改，恢复上次提交
git checkout a.txt
### 回退到上一版本
git reset HEAD a.txt
### 回退到某个版本
git reset --hard 39952e15bce582b3
### 删除上个版本记录
git reset --soft HEAD^


## 分支操作：
### 拉取最新
git pull
### 查看分支
git branch
### 新增分支
git branch dev
### 创建新的空白分支
git checkout --orphan test
### 删除分支
git branch -d dev
### 切换分支
git checkout dev
git checkout -b test origin/test
### 合并分支
git merge master
git rebase master
### 查看远程分支
git remote -v
### 推送分支
git push origin dev
git push origin master:master
### 远程克隆分支
git clone -b dev ssh://git@xxx.xxx.cn/xxx/test.git

## Tag操作
### 查看Tag
git tag
### 新增Tag
git tag version0
### 删除Tag
git tag -d version
### 
git tag -a v0.1.2 -m “v0.1.2”
### push某个tag到远端服务器
git push origin v0.1.2
### push所有tag到远端服务器
git push [origin] --tags

### 查看某个文件的包含提交人员，日期、版本号等记录信息，不包括修改详情
git whatchanged <filename>


Arcanist基本使用教程：
https://www.5288z.com/1469.html
