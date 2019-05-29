import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';

class HtmlViewPage extends StatefulWidget {
  @override
  HtmlViewPageState createState() => HtmlViewPageState();
}

class HtmlViewPageState extends State<HtmlViewPage> {
  String html = "<p>html view 可以当做富文本显示器</p>";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Html View"),
      ),
      body: ListView(
        children: <Widget>[
          // 注意HtmlView需要一个设置高度的容器包裹
          Container(
            height: 500,
            child: HtmlView(data: html),
          )
        ],
      ),
    );
  }
}
