import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Show Dialog"),
            onPressed: () => _showDialog(context),
          )
        ],
      ),
    );
  }

  _showDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Confirm"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text("Are you sure want to exit?")],
              ),
            ),
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
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
