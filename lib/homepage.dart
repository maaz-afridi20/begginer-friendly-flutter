import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Checking'),
          backgroundColor: Colors.lightGreenAccent,
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.account_box),
        ),
      ),
    );
  }
}
