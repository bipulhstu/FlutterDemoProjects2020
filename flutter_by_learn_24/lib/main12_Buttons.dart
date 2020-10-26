import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Raised Button, FlatButton, IconButton and FloatingActionButton

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        children: <Widget>[
          Text(
            "Count ${count}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            child: Text("Raised Button"),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
          FlatButton(
            child: Text("Flat Button"),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
        ],
      ),
    );
  }
}
