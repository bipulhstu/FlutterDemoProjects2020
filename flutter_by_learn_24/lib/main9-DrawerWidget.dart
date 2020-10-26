import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Drawer Widget

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        drawer: Drawer(
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
        ),
        body: Center(
          child: Text("Text in Center"),
        ));
  }
}
