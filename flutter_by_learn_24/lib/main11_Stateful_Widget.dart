import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Stateful Widget

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
  String txt = "stateless widget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: ListView(
        children: <Widget>[
          Text(txt),
          RaisedButton(
            child: Text("Tap Here"),
            onPressed: () {
              print("Button Pressed");
              setState(() {
                txt = "stateful widget";
              });
            },
          )
        ],
      ),
    );
  }

  Widget _homeDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset("assets/images/jack2.jpg"),
              Positioned(
                left: 30,
                bottom: 50,
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/images/profile_icon.png"),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 20,
                child: Text(
                  "Hi, Jack Ryan",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),

          //Menu
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Profile"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Profile"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Profile"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Profile"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Profile"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Profile"),
          ),
          Divider(),
        ],
      ),
    );
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
