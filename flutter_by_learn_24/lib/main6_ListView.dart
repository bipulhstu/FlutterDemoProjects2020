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
  final _longText = "The following defines the version and build number for your application. A version number is three numbers separated by dots, like 1.2.4 followed by an optional build number separated by a +. Both the version and the builder number may be overridden in flutterbuild by specifying --build-name and --build-number, respectively.In Android, build-name is used as versionName while build-number used as versionCode.";
  final _shortText = "This is short text";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: ListView(
          children: <Widget>[
            Text(_longText+_longText+_longText+_longText+_longText+_longText+_longText+_longText+_longText, textAlign: TextAlign.justify,)
          ],
        )
    );
  }
}
