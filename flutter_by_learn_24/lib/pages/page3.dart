import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  var data;

  PageThree(this.data);

  @override
  _PageThreeState createState() => _PageThreeState(this.data);
}

class _PageThreeState extends State<PageThree> {
  var data;

  _PageThreeState(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[
          Text("Title: ${this.data['title']}"),
          Divider(),
          Text("Description: ${this.data['body']}"),
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
