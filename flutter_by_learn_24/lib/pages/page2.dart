import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  var m;
  PageTwo(this.m);
  @override
  _PageTwoState createState() => _PageTwoState(this.m);
}

class _PageTwoState extends State<PageTwo> {
  var m;
  _PageTwoState(this.m);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[
          Text("Page 2 ${this.m}b "),
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
