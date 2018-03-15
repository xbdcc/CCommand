## 提交修改：
添加所有文件
git add .
添加某文件
git add a.txt
提交文件
git commit -m "test"
修改当前commit的信息
git commit --amend -m "update commit"

## 状态查询：
查询当前状态
git status
查询提交日志
git log

## 版本回退：
执行git add前执行放弃本地修改，恢复上次提交
git checkout a.txt
回退到上一版本
git reset HEAD a.txt

