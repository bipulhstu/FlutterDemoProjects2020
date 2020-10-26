import 'package:flutter/material.dart';

//Text Widget and Padding

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
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'This is our first flutter app. This is our first flutter app. This is our first flutter app. This is our first flutter app. This is our first flutter app',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 16,
                fontStyle: FontStyle.italic),
          ),
        )
    );
  }
}
