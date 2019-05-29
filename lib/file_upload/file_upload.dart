import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';

class FileUploadPage extends StatefulWidget {
  @override
  FileUploadPageState createState() => FileUploadPageState();
}

class FileUploadPageState extends State<FileUploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("文件上传"),
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: Text("未真正上传，请自行修改生成地址和上传参数"),
            ),
            RaisedButton(
              onPressed: () async {
                var image = await ImagePicker.pickImage(
                    source: ImageSource.camera); // 选择文件
                print(image);
                _uploadFile(image);
              },
              child: Text("上传文件(拍照上传)"),
            ),
            RaisedButton(
              onPressed: () async {
                var image = await ImagePicker.pickImage(
                    source: ImageSource.gallery); // 选择文件
                _uploadFile(image);
              },
              child: Text("上传文件(相册上传)"),
            ),
          ],
        ));
  }

  Future<Response> _uploadFile(File image) async {
    Dio dio = new Dio();
    FormData formData = new FormData.from(
        {'token': '123', "file": new UploadFileInfo(image, "123.jpg")});
    // TODO 未真正上传
    return await dio.post("https://xxx.xxx.com/info", data: formData);
  }
}
