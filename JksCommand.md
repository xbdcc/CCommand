## 签名查看：

### 通过key查看
key详情信息命令：
keytool -list -v -keystore codemao.keystore -storepass cm66668888 
证书指纹 (SHA1)命令：
keytool -list -keystore codemao.keystore

###通过APK解压RSA查看
keytool -printcert -file META-INF/CERT.RSA


###签名命令
jarsigner -verbose -keystore D:\Aspire\project\Agent\key\aspire-android-test-release-key.keystore -signedjar D:\Aspire\project\Agent\apk\Agent.apk 

