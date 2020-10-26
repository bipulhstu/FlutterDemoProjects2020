import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Card and Material Widget

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
      drawer: _homeDrawer(),
      body: ListView(
        children: <Widget>[
          _foodCard(),
          _foodCard(),
          _foodCard(),
          _foodCard(),
          _foodCard(),
          _foodCard(),
        ],
      ),
    );
  }

  Widget _foodCard() {
    return Material(
      elevation: 8,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset("assets/images/profile_icon.png"),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Hot Dog",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Price \$22",
                      style: TextStyle(
                        fontSize: 14,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Sale 42 times", style: TextStyle(fontSize: 14)),
                ],
              ),
            )
          ],
        ),
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
