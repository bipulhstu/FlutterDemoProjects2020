import 'package:flutter/material.dart';
import 'package:flutter_by_learn_24/pages/page2.dart';

//Pass data between pages using constructor
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[
          Text("Dashboard"),
          RaisedButton(
            child: Text("Goto Page2"),
            onPressed: () {
              var message = "Hello World";
              Route route = MaterialPageRoute(builder: (context) => PageTwo(message));
              Navigator.push(context, route);
            },
          )
        ],
      ),
    );
  }
}
