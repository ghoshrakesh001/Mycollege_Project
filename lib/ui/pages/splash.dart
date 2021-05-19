import 'dart:async';
import 'package:flutter/material.dart';
import 'package:opentrivia/ui/pages/home.dart';
import 'package:opentrivia/ui/pages/MyHomePage.dart';
// ignore: unused_import
import 'package:opentrivia/ui/pages/home.dart';

// ignore: camel_case_types
class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

// ignore: camel_case_types
class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     Padding(
      //       padding: EdgeInsets.all(22.0),
      //       child: Image.asset(
      //         'assets/images/q1.jpg',
      //         height: 120.0,
      //         width: 120.0,
      //       ),
      //     ),
      //     Stack(
      //       children: <Widget>[
      //         SingleChildScrollView(
      //           child: Container(
      //             height: 300.0,
      //             width: 300.0,
      //             padding: EdgeInsets.symmetric(
      //               horizontal: 30.0,
      //               vertical: 25.0,
      //             ),
      //             decoration: BoxDecoration(
      //                 color: Colors.amber, shape: BoxShape.rectangle),
      //           ),
      //         )
      //       ],
      //     )
      //   ],
      // ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/q3.png',
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
        ],
      ),
      // backgroundColor: Colors.pink,
      // body: Center(
      //   child: Text(
      //     "Test Yourself !!",
      //     style: TextStyle(
      //       fontSize: 50.0,
      //       color: Colors.white,
      //       fontFamily: "CaviarDreams",
      //     ),
      //     textAlign: TextAlign.center,
      //   ),

      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Image.asset(
      //         'assets/images/q.jpg',
      //         height: 1000,
      //         width: 400,
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
