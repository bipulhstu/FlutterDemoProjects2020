import 'package:flutter/material.dart';
import 'package:flutter_by_learn_24/pages/page1.dart';

//Multiple Page
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
            child: Text("Goto Page1"),
            onPressed: () {
              Route route = MaterialPageRoute(builder: (context) => PageOne());
              Navigator.push(context, route);
            },
          )
        ],
      ),
    );
  }
}
