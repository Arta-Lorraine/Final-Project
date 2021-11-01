adb shell am force-stop com.example.kai.myapplication
adb install -r screanon.apk
adb shell monkey -p com.example.screanon -c android.intent.category.LAUNCHER 1
adb shell pm uninstall -k com.example.kai.myapplication
