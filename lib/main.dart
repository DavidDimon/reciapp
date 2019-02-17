import 'package:flutter/material.dart';

import './scenes/Home/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new HomeScreen()
    );
  }
}