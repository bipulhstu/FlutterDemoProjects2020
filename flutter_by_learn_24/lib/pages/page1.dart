import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[
          Text("Page 1"),
          RaisedButton(
            child: Text("Go to Dashboard"),
            onPressed: () {
              //back
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
