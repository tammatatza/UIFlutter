import 'dart:io';
import 'dart:math';
import 'package:chatapp/views/Locker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF76BDE4),
        accentColor: const Color(0xFF76BDE4),
        canvasColor: const Color(0xFF76BDE4),
      ),
      home: new LockerPage(),
    );
  }
}

class LockerPage extends StatefulWidget {
  LockerPage({Key key}) : super(key: key);
  @override
  _LockerPageState createState() => new _LockerPageState();
}

class _LockerPageState extends State<LockerPage> {
  String imageUrl;
  DateTime date = DateTime.now();

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Upload Image')),
      body: ListView(
        children: <Widget>[
          (imageUrl != null)
              ? Image.network(imageUrl)
              : Placeholder(
                  fallbackHeight: 100.0,
                  fallbackWidth: 50.0,
                ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            child: Text('Upload'),
            color: Colors.lightBlue,
            onPressed: () => uploadImage(),
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            child: Text('Accept'),
            color: Colors.lightBlue,
            onPressed: () {
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => MyHomePage());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
    );
  }

  uploadImage() async {
    final _storage = FirebaseStorage.instance;
    final _picker = ImagePicker();
    PickedFile image;
    Random random = Random();
    int i = random.nextInt(1000);

    //Check Permissions
    await Permission.photos.request();

    var permissionStatus = await Permission.photos.status;

    if (permissionStatus.isGranted) {
      //Select Image
      image = await _picker.getImage(source: ImageSource.gallery);
      var file = File(image.path);

      if (image != null) {
        //Upload to Firebase
        var snapshot =
            await _storage.ref().child('Locker/$i').putFile(file).onComplete;

        var downloadUrl = await snapshot.ref.getDownloadURL();

        setState(() {
          imageUrl = downloadUrl;
        });
      } else {
        print('No Path Received');
      }
    } else {
      print('Grant Permissions and try again');
    }
  }

  void fabPressed() {}
}
