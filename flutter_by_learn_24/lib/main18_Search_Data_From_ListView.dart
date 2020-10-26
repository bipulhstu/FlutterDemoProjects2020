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
  List unfilterData;

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString("assets/data.json");
    setState(() {
      data = json.decode(jsonText);
    });
    this.unfilterData = data; //copy data to unfiltered data
    print(jsonText);
  }

  @override
  void initState() {
    super.initState();
    this.loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  hintText: "Search a name"
              ),
              onChanged: (String str){
                print(str);
                this.searchData(str);
              },
            ),


            Expanded(child: ListView.builder(
              itemCount: data.length == null ? 0: data.length,
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
            )
          ],
        )
    );
  }


  searchData(str){
    var strExist = str.length > 0 ? true: false;
    if(strExist){
      var filterData = [];
      for(var i = 0; i < this.unfilterData.length; i++){
        String name = unfilterData[i]['name'].toUpperCase();
        if(name.contains(str.toUpperCase())){
          filterData.add(unfilterData[i]);
        }
      }
      setState(() {
        this.data = filterData;
      });
    }
    else{
      setState(() {
        this.data = unfilterData;
      });
    }
  }
}
