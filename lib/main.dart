import 'package:flutter/material.dart';
import '11Stack层叠组件 Stack与Align  Stack与Positioned实现定位布局/res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200,
      child: AspectRatio(
        aspectRatio: 2 / 0.2,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
