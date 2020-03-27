Android Studio中可以在Terminal输入./gradlew代表gradle
## 列出构建文件中的所有项目
gradle -q projects
## 打出所有包
./gradlew assembleRelease
## 打包并且输出task的执行时间
./gradlew assembleDebug --profile(在project的build/reports/profile下会生成报告文件，打开可在浏览器直观查看）
## 打某个环境包
./gradlew assembleOppoRelease
## 列举出APP依赖关系 
./gradlew :app:dependencies > log.txt
## 强制刷新Gradle依赖缓存
./gradlew build --refresh-dependencies  
