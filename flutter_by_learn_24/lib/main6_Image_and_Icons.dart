import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Image and Icons

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  final _longText = "The following defines the version and build number for your application. A version number is three numbers separated by dots, like 1.2.4 followed by an optional build number separated by a +. Both the version and the builder number may be overridden in flutterbuild by specifying --build-name and --build-number, respectively.In Android, build-name is used as versionName while build-number used as versionCode.";
  final _shortText = "This is short text";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Column(
          children: <Widget>[
            Image.asset("assets/images/jack.jpg"),
            Column(children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(_longText, textAlign: TextAlign.justify, )
              )

            ],
            ),
            Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.all(10.0),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.linked_camera),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.all(10.0),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.access_alarm),
                  ),
                ]
            ),

          ],
        )
    );
  }
}
