import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(
            Icons.add,
            size: 30,
          ),
          Icon(
            Icons.list,
            size: 30,
          ),
          Icon(
            Icons.compare_arrows,
            size: 30,
          ),
          Icon(
            Icons.call_split,
            size: 30,
          ),
          Icon(
            Icons.perm_identity,
            size: 30,
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.red,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        onTap: (index){
          setState(() {
            _page = index;
          });
        },
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            children:<Widget> [
              Text(_page.toString(), textScaleFactor: 10.0,),
              RaisedButton(
                  color: Colors.white,
                  child: Text("Go to Home Page"),
                  onPressed: (){

                    final CurvedNavigationBarState navBarState = _bottomNavigationKey.currentState;
                    navBarState.setPage(0);
              })
            ],
          ),
        ),
      ),
    );
  }
}
