## 提交修改：
### 添加所有文件
git add .
### 添加某文件
git add a.txt<file>       
### 已添加git的文件忽略提交
git update-index --assume-unchanged FILENAME       路径+文件名   
### 已添加git的文件忽略后取消忽略提交
git update-index --no-assume-unchanged FILENAME     
### 恢复文件改变前
git checkout -- xbd.md<file>
### 删除某文件
git rm a.txt
### 提交文件
git commit -m "test"
### 追加修改提交文案
git commit --amend -m "test2"
### 删除远端保留本地文件
git rm --cached settings.gradle
### 删除远端文件夹保留本地文件夹
git rm -r --cached gradle
### 放弃此次rebase操作
git rebase --abort
## 状态查询：
### 查询当前状态
git status
### 查询提交日志
git log
### 合并提交
git rebase -i
- `git rebase -i HEAD~2`合并最近两次，回车进入vim控制台修改
- 第二行即最近一次提交的`pick`改为`squash`压缩为最后一次提交，vim保存退出
- 弹出信息框可修改提交信息，保存退出
- 执行`git push -f`与远端仓库同步        

### 查看所有分支总提交次数
git rev-list --all --count
### 查看master分支总提交次数
git rev-list --count master
### 查看dev分支日期范围内提交次数
git rev-list --count dev --after="2022-4-27 0:0:0" --before="2022-5-31 0:0:0"
### 比较两个分支的不同
git log local...dev
### 查看master分支中不包含dev的内容
git log dev..master         
         
## 版本回退：
### 执行git add前执行放弃本地修改，恢复上次提交
git checkout a.txt
### 回退到上一版本
git reset HEAD a.txt
### 回退到某个版本
git reset --hard 39952e15bce582b3
### 删除上个commit记录
git reset --soft HEAD^
### 进行了多次操作想回到之前版本
- 先用`git reflog`查看修改记录
- 找到想要退回的版本如:59d03f4 HEAD@{1}: reset: moving to HEAD^
- 再用`git reset --hard 59d03f4`强制回退到该版本


## 暂存操作
### 查看暂存列表
git stash list 
### 暂存本地变动并revert
git stash "暂存当前变动，revert到上次代码"
### 恢复本地变动
git stash pop stash@{0}


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
### 拉取并切换远程分支
git checkout -b dev(本地分支名) origin/dev(远端分支名)
### 合并分支
合并*master*分支改动到*dev*分支
- 先从master分支切到dev，执行`git checkout dev`
- 再合并master改动到dev，执行`git rebase master` 或`git merge master`   
### 合并分支忽略尾部空格的改变
git merge -Xignore-space-at-eol master（https://zhuanlan.zhihu.com/p/66152363）

### 查看远程分支
git branch -r
### 推送分支
git push origin dev  
git push origin master:master
### 远程克隆分支
git clone -b dev ssh://git@xxx.xxx.cn/xxx/test.git
### 替换分支
git reset –-hard dev // 将本地当前分支重置成本地dev分支

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
### 删除Github上某个tag
git delete 0.1.1
git push origin :0.1.1

### 查看某个文件的包含提交人员，日期、版本号等记录信息，不包括修改详情
git whatchanged <filename>
         
         
## 仓库相关
### 查看当前仓库地址
git remote -v    
git remote show origin

### 配置文件
在git中，我们使用git config 命令用来配置git的配置文件，git配置级别主要有以下3类：
1、仓库级别 local 【优先级最高】
2、用户级别 global【优先级次之】
3、系统级别 system【优先级最低】
### 查看配置
- 查看仓库配置：git config --local -l 
- 查看用户配置：git config --global -l 
- 查看系统配置：git config --system -l 
### 查看或修改用户名邮箱
- git config --global user.email
- git config --local user.name xbd


## 权限相关
ssh -T git@github.com


## Gerrit
refs/for 的意义在于我们提交代码到服务器之后是需要经过code review 之后才能进行merge的，而refs/heads 不需要  
git push origin HEAD:refs/for/dev(仓库名)


## Git Commit规范
Angular 的 commit 规范：https://github.com/angular/angular/blob/master/CONTRIBUTING.md#-commit-message-guidelines    
如下：
- build: 改变构建流程，新增依赖库、工具等（例如webpack修改）
- ci: 自动化流程配置修改
- docs: 修改文档
- feat: 新功能
- fix: 修复bug
- perf: 改善性能和体现的修改
- refactor: 代码重构
- style: 仅仅修改了空格、缩进等，不改变代码逻辑
- test: 测试用例的修改

例如：feat(*): add new function.    


         
Arcanist基本使用教程：
https://www.5288z.com/1469.html


## Problem
SSH连接的时候Host key verification failed.
https://www.cnblogs.com/guanbin-529/p/11693048.html

## 参考链接
- [git rebase -i](https://www.cnblogs.com/amou/p/9465880.html)
- [Git 多用户配置]https://blog.csdn.net/yuanlaijike/article/details/95650625
- [gerri push git remote: ERROR](https://www.cnblogs.com/boann/p/5627082.html)
- [通过阅读git-config文档理解Git如何使用autocrlf、safecrlf、eol和.gitattributes处理line-ending](https://www.jianshu.com/p/2a46dfd3705a)

