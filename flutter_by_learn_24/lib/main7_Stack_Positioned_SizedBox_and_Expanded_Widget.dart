import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Stack, Positioned, Sizedbox and Expanded Widget
//Stack is used for combined two widget. such as text in image
//Positioned is used for the exact location of a widget where we want to place
//Sizebox is used for spacing
//Expanded Widget is filled the remaining space. Streched the width

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  final _longText =
      "The following defines the version and build number for your application. A version number is three numbers separated by dots, like 1.2.4 followed by an optional build number separated by a +. Both the version and the builder number may be overridden in flutterbuild by specifying --build-name and --build-number, respectively.In Android, build-name is used as versionName while build-number used as versionCode.";
  final _shortText = "This is short text";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: ListView(
          children: <Widget>[
            Column(children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset("assets/images/jack2.jpg"),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text(
                      "Jack Ryan",
                      style: TextStyle(color: Colors.orange, fontSize: 30),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Features",
                style: TextStyle(color: Colors.orange, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  _rowCell(),
                  _rowCell(),
                  _rowCell(),
                  _rowCell()
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                  ),
                ),
              )
            ])
          ],
        ));
  }

  Widget _rowCell() {
    return Expanded(
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: Colors.red),
        child: Icon(
          Icons.link,
          color: Colors.white,
        ),
      ),
    );
  }
}
