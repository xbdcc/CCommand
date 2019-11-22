## 签名查看：

### 通过key查看
key详情信息命令：   
keytool -list -v -keystoret test.jks(秘钥名字) -storepass test(密码)   
证书指纹 (SHA1)命令：   
keytool -list -keystore test.jks(秘钥名字)   

### 通过APK解压RSA查看
keytool -printcert -file META-INF/CERT.RSA


### 签名命令
jarsigner -verbose -keystore  /Users/caochang/test.key -signedjar /Users/caochang/test_signed.apk /Users/caochang/test_unsigned.apk test     
-verbose 输出签名详细信息      
-keystore 指定密钥对的存储路径    
-signedjar 后面三个参数分别是 签名后的APK包 未签名的APK包 和 密钥对的别名     

### 修改别名
keytool -changealias -keystore test.jks -alias 小不点（当前别名） -destalias carlos(修改后别名）
