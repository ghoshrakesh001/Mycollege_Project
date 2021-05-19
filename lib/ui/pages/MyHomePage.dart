import 'package:flutter/material.dart';
import 'package:opentrivia/ui/pages/home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LoginUi",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              height: 300.0,
              width: 380.0,
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 25.0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 25.0,
                    ),
                    child: TextField(
                      autocorrect: false,
                      autofocus: false,
                      style: TextStyle(fontSize: 20.0),
                      decoration: InputDecoration(
                          hintText: "Username",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(15.0)),
                    ),
                  ),
                  TextField(
                    autocorrect: false,
                    autofocus: false,
                    obscureText: true,
                    style: TextStyle(fontSize: 20.0),
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.all(15.0)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    minWidth: 180,
                    splashColor: Colors.green[200],
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(
                      vertical: 12.0,
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
