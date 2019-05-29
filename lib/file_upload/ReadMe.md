### 上传文件

#### 1.引入依赖
``` yaml
  image_picker: ^0.6.0+8
  dio: ^2.1.5
```

[image_picker](https://pub.flutter-io.cn/packages/image_picker)
[dio](https://pub.flutter-io.cn/packages/dio)



#### 2.配置权限
##### 项目因使用image_picker作为文件选择器，所以需要安装image_picker说明进行配置，下面是摘自image_picker的说明

> iOS ＃
> 将以下键添加到Info.plist文件中，该文件位于<project root>/ios/Runner/Info.plist：
>
> NSPhotoLibraryUsageDescription - 描述您的应用需要照片库权限的原因。这在可视化编辑器中称为隐私 - 照片库使用说明。
> NSCameraUsageDescription - 描述您的应用需要访问相机的原因。这在可视化编辑器中称为隐私 - 相机使用说明。
> NSMicrophoneUsageDescription - 如果您打算录制视频，请说明您的应用需要访问麦克风的原因。这在可视化编辑器中称为隐私 - 麦克风使用说明。
> Android ＃
> 无需配置 - 插件应该开箱即用。

根据上述描述只需要在<project root>/ios/Runner/Info.plist中加入
```xml
<dict>

    .... other configs
    
    <key>NSCameraUsageDescription</key>
	<string>使用相机</string>
	<key>NSMicrophoneUsageDescription</key>
	<string>使用麦克风</string>
	<key>NSPhotoLibraryUsageDescription</key>
	<string>使用相册</string>
</dict>
```