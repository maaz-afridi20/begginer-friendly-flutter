import 'package:flutter/material.dart';
import 'package:navigatingscreens/firstscreen.dart';
import 'package:navigatingscreens/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
