import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        body: new Center(         // centers the content of nested widgets
          child: new Text('Hello World'),  // Displays our message
        ),
      ),
    );
  }

  }


  // When done hit the Green Arrow above to launch your App.