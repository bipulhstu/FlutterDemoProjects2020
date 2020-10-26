import 'dart:convert';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_by_learn_24/models/user.dart';

//PopupMenu

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: PopupMenuPage(),
  ));
}

class PopupMenuPage extends StatefulWidget {
  @override
  _PopupMenuPagePageState createState() => _PopupMenuPagePageState();
}

class _PopupMenuPagePageState extends State<PopupMenuPage> {
  List users = [];

  _loadUserData() async {
    var jsonString = await rootBundle.loadString("assets/data.json");
    setState(() {
      this.users = json.decode(jsonString);
    });
    print(jsonString);
  }

  @override
  void initState() {
    _loadUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Popup Menu"),
          actions: <Widget>[
            PopupMenuButton(
                elevation: 10,
                offset: Offset(0, 55),
                onSelected: (val){
                  print(val);
                },
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      value: "rating",
                      child: Text("Rating"),
                    ),
                    PopupMenuItem(
                      value: "website",
                      child: Text("Website"),
                    ),
                    PopupMenuItem(
                      value: "rating",
                      child: Text("Rating"),
                    ),
                  ];
                })
          ],
        ),
        body: Container(
          width: double.infinity,
          child: ListView.builder(
              itemCount: users == null ? 0 : users.length,
              itemBuilder: (BuildContext context, int index) {
                User user = User.fromJson(users[index]);
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(user.name[0]),
                  ),
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              }),
        ));
  }
}
