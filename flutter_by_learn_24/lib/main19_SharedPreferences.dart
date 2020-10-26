import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  int counter = 0;

  //function for sharedpreference
  init() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    int c = (sp.getInt('counter') ?? 0);
    setState(() {
      this.counter = c;
    });
  }

  @override
  void initState() {
    this.init();
    super.initState();
  }

  increment() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      this.counter++;
      sp.setInt('counter', this.counter);

    });
  }
  decrement() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      this.counter--;
      sp.setInt('counter', this.counter);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Home')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$counter", style: TextStyle(fontSize: 22),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("-"),
                  onPressed: (){
                    this.decrement();
                  },
                ),
                RaisedButton(
                  child: Text("+"),
                  onPressed: (){
                    this.increment();
                  },
                )
              ],
            )
          ],
        )
    );
  }


}
