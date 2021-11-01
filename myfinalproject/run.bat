adb install app-debug.apk
adb shell monkey -p com.example.kai.myapplication -c android.intent.category.LAUNCHER 1
