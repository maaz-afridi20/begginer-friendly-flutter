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
          title: Text(
            'Checking',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          backgroundColor: Colors.lightGreenAccent,
          elevation: 0,
        ),
        body: Center(
          child: Text(
            "I am Learning flutter by desi programmers. my self",
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              backgroundColor: Colors.grey,
              letterSpacing: 5.0, // spacing bw the letters
              wordSpacing: 5.0,
              decoration: TextDecoration.underline,
              decorationColor:
                  Colors.black, // will change the color of that under line
              decorationThickness: 5.0, // thickness of the underline.
              decorationStyle: TextDecorationStyle.double,
              fontFamily: "Times New Roman",
            ),
            textAlign: TextAlign.right, // align text in right.
            textDirection: TextDirection.rtl,

            maxLines: 1, // this will show how much line we want to show.

            //overflow: TextOverflow.fade,//ther are the properties of the
            //overflow that we can give like fade will little much
            // white it from below so it mean that there is some thing below.

            overflow: TextOverflow.ellipsis, // this will show some dotes
            // after text mean that there is some another text also.
          ),
        ),
      ),
    );
  }
}
