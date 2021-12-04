import 'package:flutter/material.dart';
//import'package:notifications/notification/notification.dart';
import 'package:notifications/GUI/first.dart';
import 'package:notifications/GUI/second.dart';
import 'package:notifications/GUI/third.dart';

void main() {
  runApp(new MaterialApp(
      //    home: new Home()
      home: new Navi()));
}

class Navi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation & routes',
      routes: <String, WidgetBuilder>{
        '/first': (BuildContext context) => new First(),
        '/second': (BuildContext context) => new Second(),
        '/third': (BuildContext context) => new Third(),
      },
      home: new First(),
    );
  }
}
