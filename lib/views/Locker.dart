import 'package:chatapp/views/Upload.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF76BDE4),
        accentColor: const Color(0xFF76BDE4),
        canvasColor: const Color(0xFFFFFFFF),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get datashows => null;

  Widget signInButton() {
    return IconButton(
      icon: Icon(Icons.add),
      tooltip: 'plus',
      onPressed: () {
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => Upload());
        Navigator.push(context, route);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Locker'),
        actions: <Widget>[signInButton()],
      ),
    );
  }

  void fabPressed() {}
}
