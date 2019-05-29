### Html视图Demo

#### 1. 依赖
```yaml
flutter_html_view: ^0.5.11
```
[flutter_html_view](https://pub.flutter-io.cn/packages/flutter_html_view)


#### 2. 配置权限
> iOS #
> Warning: The video player is not functional on iOS simulators. An iOS device must be used during development/testing.
> 
> Add the following entry to your Info.plist file, located in <project root>/ios/Runner/Info.plist:
> 
> <key>NSAppTransportSecurity</key>
> <dict>
>   <key>NSAllowsArbitraryLoads</key>
>   <true/>
> </dict>
> This entry allows your app to access video files by URL.
> 
> Android #
> Ensure the following permission is present in your Android Manifest file, located in `<project root>/android/app/src/main/AndroidManifest.xml:
> 
> <uses-permission android:name="android.permission.INTERNET"/>