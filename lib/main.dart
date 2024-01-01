import 'package:didemo1/utilies/locator.dart';
import 'package:flutter/material.dart';

import 'screens/counterwidget.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCounterWidget(),
    );
  }
}