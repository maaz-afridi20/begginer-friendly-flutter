// there is two things if we want to navigate from one
// screen to another then we can use the
// navigate.push(...)  .... in every button function
// where we want to go which eg are given.
// for that we will MaterialPageRoute()
// while where the screen are in route then we will use
// navigator.pushnames()
//
//.. but if there are many screen then we make routes()
// so in this we basically create many roots just like folder and
// then we call it that specific route for where we want to go...

// but for doing navigation we have to wrap home into Builder(builder:(context)=>Scaffold)
// example given belos

import 'package:flutter/material.dart';
import 'package:navigatingscreens/third.dart';
import 'firstscreen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/Home': (context) => HomePage(),
        '/firstscreen': (context) => FirstScreen(),
        '/thirdscreen': (context) => ThirdScreen(),

        // so this is basically names that we ara giving to the
        // pages like we give name to the home page ('/home')
        // so when we want to call this page from some button etc
        // then we can use this name in below
        // navigator.pushnamed(context, '/HomePage()')
        // so the home page will call same is the case with all
        // screeens or pages.
      },
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.0,
            backgroundColor: Color(0Xff420420),
            title: Text("Navigation Screens"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Home Page",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Times New Roman",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => FirstScreen(),
                      //   ),
                      // );
                      // instead of this we can also use this
                      // example given below.

                      Navigator.pushNamed(context, '/firstscreen');
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 10.0,
                    ),
                    child: Text(
                      "Go To First Screen",
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
                FlatButton(
                    color: Colors.brown,
                    onPressed: () {
                      Navigator.pushNamed(context, '/thirdscreen');
                    },
                    child: Text(
                      "go to next page",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
