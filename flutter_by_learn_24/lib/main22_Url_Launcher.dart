import 'dart:convert';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_by_learn_24/models/user.dart';
import 'package:url_launcher/url_launcher.dart';

//PopupMenu with Url launcher

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
          title: Text("Popup Menu & Url Launcher"),
          actions: <Widget>[
            PopupMenuButton(
                elevation: 10,
                offset: Offset(0, 55),
                onSelected: (val) {
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
                  trailing: listPopupMenu(user),
                );
              }),
        ));
  }

  listPopupMenu(User user) {
    return PopupMenuButton(
      offset: Offset(0, 40),
      onSelected: (val) async {
        switch (val) {
          case 'call':
            if (await canLaunch("tel:${user.phone}")) {
              await launch("tel:${user.phone}");
            }
            break;

          case 'website':
            if (await canLaunch("${user.website}")) {
              await launch("${user.website}");
            }
            break;

          case 'sms':
            if (await canLaunch("sms:${user.phone}")) {
              await launch("sms:${user.phone}");
            }
            break;
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            value: "call",
            child: Row(
              children: <Widget>[
                Icon(Icons.phone),
                SizedBox(
                  width: 10,
                ),
                Text("Call")
              ],
            ),
          ),
          PopupMenuItem(
            value: "website",
            child: Row(
              children: <Widget>[
                Icon(Icons.web),
                SizedBox(
                  width: 10,
                ),
                Text("Visit Website")
              ],
            ),
          ),
          PopupMenuItem(
            value: "sms",
            child: Row(
              children: <Widget>[
                Icon(Icons.sms),
                SizedBox(
                  width: 10,
                ),
                Text("Send sms")
              ],
            ),
          )
        ];
      },
    );
  }
}
