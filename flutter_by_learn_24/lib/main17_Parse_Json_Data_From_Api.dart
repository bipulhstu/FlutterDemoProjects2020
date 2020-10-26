import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_by_learn_24/pages/page3.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

//Parse json data from api

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List posts;

  Future<bool> _getPosts() async {
    String serviceUrl = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(serviceUrl);
    setState(() {
      posts = json.decode(response.body.toString());
      print(posts[0]);
    });
  }

  @override
  void initState() {
    super.initState();
    this._getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            itemCount: posts.length == null? 0: posts.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(posts[index]["title"]),
                onTap: (){
                  Route route = MaterialPageRoute(builder: (context) => PageThree(posts[index]));
                  Navigator.push(context, route);
                },
              );
            }));
  }
}
