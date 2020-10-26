import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';

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
  List data;

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString("assets/data.json");
    setState(() {
      data = json.decode(jsonText);
    });
    print(jsonText);
  }

  @override
  void initState() {
    this.loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  child: Text(data[index]["name"][0]),
                ),
                title: Text(data[index]["name"]),
                subtitle: Text(data[index]["email"]),
              )
            ],
          );
        },
      ),
    );
  }
}
