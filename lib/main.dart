import 'package:chatapp/helper/authenticate.dart';
import 'package:chatapp/views/Locker.dart';
import 'package:chatapp/views/Upload.dart';
import 'package:chatapp/views/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool userIsLoggedIn;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Secret',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff76BDE4),
        scaffoldBackgroundColor: Color(0xff76BDE4),
        accentColor: Color(0xff3498DB),
        fontFamily: "OverpassRegular",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: userIsLoggedIn != null
          ? userIsLoggedIn
              ? SignIn
              : Authenticate()
          : Container(
              child: Center(
                child: Authenticate(),
              ),
            ),
    );
  }
}
