## 提交修改：
### 添加所有文件
git add .
### 添加某文件
git add <filename> 
### 删除某文件
git rm <filename> 
### 删除某文件
git rm <filename>
### 提交文件
git commit -m <message>
### 删除远端保留本地文件
git rm --cached <filename>
### 删除远端文件夹保留本地文件夹
git rm -r --cached <filepath>
## 状态查询：
### 查询当前状态
git status
### 查询提交日志
git log

## 版本回退：
### 执行git add前执行放弃本地修改，恢复上次提交
git checkout <filename>
### 回退到上一版本
git reset HEAD <filename>
### 回退到某个版本
git reset --hard <revision number>
### 删除上个版本记录
git reset --soft HEAD^


## 分支操作：
### 查看分支
git branch
### 新增分支
git branch <branchname>
### 删除分支
git branch -d <branchname>
### 切换分支
git checkout <branchname>
### 合并分支
git merge <branchname>
git rebase <branchname>
### 查看远程分支
git remote -v
### 推送分支
git push origin <branchname>
git push origin master:master

## Tag操作
### 查看Tag
git tag
### 新增Tag
git tag <tagname> 
### 删除Tag
git tag -d <tagname>
  
Arcanist基本使用教程：
https://www.5288z.com/1469.html
