import 'dart:ui';

import 'package:easy_animated_tabbar/easy_animated_tabbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy App Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> buttons = ['button1', 'button2', 'button3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EasyAnimatedTab(
            buttonTitles: buttons,
            onSelected: (index) {},
          ),
          SizedBox(
            height: 16,
          ),
          EasyAnimatedTab(
            buttonTitles: buttons,
            onSelected: (index) {},
            animationDuration: 500,
            minWidthOfItem: 70,
            minHeightOfItem: 40,
            deActiveItemColor: Colors.grey,
            activeItemColor: Colors.redAccent,
            activeTextStyle: TextStyle(color: Colors.white, fontSize: 14),
            deActiveTextStyle: TextStyle(color: Colors.redAccent, fontSize: 14),
          ),
          SizedBox(
            height: 16,
          ),
          EasyAnimatedTab(
            buttonTitles: buttons,
            onSelected: (index) {},
            animationDuration: 500,
            minWidthOfItem: 70,
            minHeightOfItem: 40,
            deActiveItemColor: Colors.grey,
            activeItemColor: Colors.redAccent,
            activeBorderRadius: 20,
            deActiveBorderRadius: 16,
            activeTextStyle: TextStyle(color: Colors.white, fontSize: 14),
            deActiveTextStyle: TextStyle(color: Colors.redAccent, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
