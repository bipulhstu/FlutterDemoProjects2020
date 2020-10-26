import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//App Exit Dialog
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
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        showExitPopup();
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text("Flutter App"),
            backgroundColor: Colors.redAccent,
          ),
          body: Center(
            child: Text("Home Screen"),
          )),
    );
  }

  showExitPopup() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Confirm"),
            content: Text("Are you sure want to exit?"),
            actions: <Widget>[
              RaisedButton(
                color: Colors.black,
                textColor: Colors.white,
                child: Text("No"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Yes"),
                onPressed: () {
                  SystemNavigator.pop();
                },
              )
            ],
          );
        });
  }
}
