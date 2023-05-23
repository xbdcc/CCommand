## 签名查看：

### 通过key查看
key详情信息命令：   
keytool -list -v -keystore test.jks(秘钥名字) -storepass test(密码)   
证书指纹 (SHA1)命令：   
keytool -list -v(详细输出） -keystore test.jks(秘钥名字)   

### 通过APK解压RSA查看
keytool -printcert -file META-INF/CERT.RSA


### 签名命令(v1方式）
jarsigner -verbose -keystore  /Users/caochang/test.key -signedjar /Users/caochang/test_signed.apk /Users/caochang/test_unsigned.apk test     
-verbose 输出签名详细信息      
-keystore 指定密钥对的存储路径    
-signedjar 后面三个参数分别是 签名后的APK包 未签名的APK包 和 密钥对的别名     

### 签名命令(v2方式）

C:\Users\admin\AppData\Local\Android\Sdk\build-tools\27.0.3\apksigner.bat sign --v1-signing-enabled true --v2-signing-enabled true --ks debug.keystore --ks-pass pass:android --out v1v2.apk debug.apk
--v1 是否v1签名，默认true
--v2 是否v2签名，默认true
--ks 签名文件路径
-ks-pass pass: 签名秘钥
--out 第一个参数签名APK路径，第二个参数原始APK路径

adb安装时提示以下错误：[Android 11 重打包对齐错误](https://blog.csdn.net/xys616/article/details/123892541)
```
Failure [-124: Failed parse during installPackageLI: Targeting R+ (version 30 and above) requires the resources.arsc of installed APKs to be stored uncompressed and aligned on a 4-byte boundary]
```
则需先对apk进行4K对齐操作
C:\Users\admin\AppData\Local\Android\Sdk\build-tools\30.0.2\zipalign.exe -p -f -v 4 debug.apk 4k_debug.apk


如安装提示以下签名错误，则需用上面v2签名命令进行签名
```
Failure [INSTALL_PARSE_FAILED_NO_CERTIFICATES: Failed collecting certificates for /data/app/vmdl546923719.tmp/base.apk: Failed to collect certificates from /data/app/vmdl546923719.tmp/base.apk: META-INF/ANDROIDD.SF indicates /data/app/vmdl546923719.tmp/base.apk is signed using APK Signature Scheme v2, but no such signature was found. Signature stripped?]
```


### 修改别名
keytool -changealias -keystore test.jks -alias 小不点（当前别名） -destalias carlos(修改后别名）




