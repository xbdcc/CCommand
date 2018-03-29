## 提交修改：
### 添加所有文件
git add .
### 添加某文件
git add a.txt
### 删除某文件
git rm a.txt
### 提交文件
git commit -m "test"
### 修改当前commit的信息
git commit --amend -m "update commit"

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

## 分支操作：
### 查看分支
git branch
### 新增分支
git branch dev
### 删除分支
git branch -d dev
### 切换分支
git checkout dev
### 合并分支
git merge master
git rebase master
### 查看远程分支
git remote -v
### 推送分支
git push origin dev

## Tag操作
### 查看Tag
git tag
### 新增Tag
git tag version0
### 删除Tag
git tag -d version
