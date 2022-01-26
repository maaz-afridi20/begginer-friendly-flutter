import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is third page'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I am third Screen",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
