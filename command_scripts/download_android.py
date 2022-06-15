#test.py【脚本名称随意】
#通过脚本下载Android源码

import xml.dom.minidom  
import os  
from subprocess import call  

#downloaded source path
rootdir = "F:/android/framwork_source/android_source" 

#git program path
git = "C:/Program Files/Git/bin/git.exe" 
dom = xml.dom.minidom.parse("F:/Android/framwork_source/manifest/default.xml")
root = dom.documentElement  

prefix = git + " clone https://aosp.tuna.tsinghua.edu.cn/"  
suffix = ".git"  

if not os.path.exists(rootdir):  
    os.mkdir(rootdir)  

for node in root.getElementsByTagName("project"):
    os.chdir(rootdir)
    d = node.getAttribute("path")
    last = d.rfind("/")
    if last != -1:
        d = rootdir + "/" + d[:last]
        if not os.path.exists(d):
            os.makedirs(d)
        os.chdir(d)
    cmd = prefix + node.getAttribute("name") + suffix
    call(cmd)
    
# 参考Windws系统下载源码：
# https://blog.csdn.net/u013095264/article/details/89396607
# https://www.jianshu.com/p/6a74190110d9
