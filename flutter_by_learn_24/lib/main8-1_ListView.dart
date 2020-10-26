import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ListView

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  final _longText =
      "The following defines the version and build number for your application. A version number is three numbers separated by dots, like 1.2.4 followed by an optional build number separated by a +. Both the version and the builder number may be overridden in flutterbuild by specifying --build-name and --build-number, respectively.In Android, build-name is used as versionName while build-number used as versionCode.";
  List people = [
    {"name": "Bipul Islam", "email": "bipulhstu@gmail.com"},
    {"name": "Aysha Siddika", "email": "ayshasiddika@gmail.com"},
    {"name": "Bipul Islam", "email": "bipulhstu.eee@gmail.com"},
    {"name": "Sumya Shumi", "email": "sbshumi@gmail.com"},
    {"name": "Bipul Islam", "email": "bipulhstu@gmail.com"},
    {"name": "Shumi Begum", "email": "shumibegum@gmail.com"},
    {"name": "Bipul Islam", "email": "bipulhstu@gmail.com"},
    {"name": "Aysha Siddika", "email": "ayshasiddika@gmail.com"},
    {"name": "Bipul Islam", "email": "bipulhstu.eee@gmail.com"},
    {"name": "Sumya Shumi", "email": "sbshumi@gmail.com"},
    {"name": "Bipul Islam", "email": "bipulhstu@gmail.com"},
    {"name": "Shumi Begum", "email": "shumibegum@gmail.com"},
    {"name": "Bipul Islam", "email": "bipulhstu@gmail.com"},
    {"name": "Aysha Siddika", "email": "ayshasiddika@gmail.com"},
    {"name": "Bipul Islam", "email": "bipulhstu.eee@gmail.com"},
    {"name": "Sumya Shumi", "email": "sbshumi@gmail.com"},
    {"name": "Bipul Islam", "email": "bipulhstu@gmail.com"},
    {"name": "Shumi Begum", "email": "shumibegum@gmail.com"},
    {"name": "Bipul Islam", "email": "bipulhstu@gmail.com"},
    {"name": "Aysha Siddika", "email": "ayshasiddika@gmail.com"},
    {"name": "Bipul Islam", "email": "bipulhstu.eee@gmail.com"},
    {"name": "Sumya Shumi", "email": "sbshumi@gmail.com"},
    {"name": "Bipul Islam", "email": "bipulhstu@gmail.com"},
    {"name": "Shumi Begum", "email": "shumibegum@gmail.com"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Column(
          children: <Widget>[
            Container(
              height: 450,
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children: <Widget>[
                  _cell(),
                  Divider(),
                  _cell(),
                  Divider(),
                  _cell(),
                  Divider(),
                  _cell(),
                  Divider(),
                  _cell(),
                  Divider(),
                  _cell(),
                ],
              ),
            )
          ],
        ));
  }

  Widget _cell() {
    return Row(
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.teal),
          child: Icon(
            Icons.lightbulb_outline,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
