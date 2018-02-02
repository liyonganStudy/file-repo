mv md-dialog/build/outputs/aar/md-dialog-release.aar neteaseMusic/aars
sed -i "" 's/gradle:2.2.2/gradle:3.0.1/' build.gradle
sed -i "" '3a\
        google()
' build.gradle
sed -i "" 's/gradle-2.14.1-all.zip/gradle-4.1-all.zip/' gradle/wrapper/gradle-wrapper.properties
sed -i "" "/^apply plugin: 'com.netease.napm.agent'/"d neteaseMusic/build.gradle
sed -i "" "/^apply plugin: 'AndResGuard'/"d neteaseMusic/build.gradle
sed -i "" "/^apply plugin: 'fragmentinsert'/"d neteaseMusic/build.gradle
sed -i "" 's/minSdkVersion 14/minSdkVersion 21/' neteaseMusic/build.gradle
sed -i "" 's/compile/implementation/' neteaseMusic/build.gradle
sed -i "" 's/Compile/Implementation/' neteaseMusic/build.gradle
sed -i "" 's/implementationSdkVersion 26/compileSdkVersion 26/' neteaseMusic/build.gradle
sed -i "" 's/implementationOptions.encoding/compileOptions.encoding/' neteaseMusic/build.gradle
sed -i "" '/implementation project/'d neteaseMusic/build.gradle
sed -i "" '/compileOptions.encoding/a\ 
    flavorDimensions "music"
' neteaseMusic/build.gradle
sed -i "" '/dev {/a\
dimension "music"
' neteaseMusic/build.gradle
sed -i "" '/user {/a\
dimension "music"
' neteaseMusic/build.gradle
sed -i "" '/<item name="@android:windowEnterAnimation">@anim/'d neteaseMusic/res/values/styles.xml
sed -i "" '/<item name="@android:windowExitAnimation">@anim/'d neteaseMusic/res/values/styles.xml
sed -i "" '/andResGuard/'d neteaseMusic/build.gradle
