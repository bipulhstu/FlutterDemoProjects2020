import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Material(
      color: Colors.yellow.shade800,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.yellow.shade800,
            body: Stack(
              children: <Widget>[
                _centerCard(screenSize),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: screenSize.height / 15),
                    child: Text(
                      'LOGO',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Already have an account? ',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          GestureDetector(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      )),
                ),
              ],
            )),
      ),
    );
  }

  _centerCard(Size screenSize) {
    return Center(
      child: Container(
        height: screenSize.height / 1.7,
        width: screenSize.width / 1.1,
        child: Card(
            elevation: 20,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Register'.toUpperCase(),
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Email or Username',
                          hintText: 'abc@example.com',
                          border: InputBorder.none),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: '*******',
                          border: InputBorder.none),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          hintText: '*******',
                          border: InputBorder.none),
                    ),
                    _actionButtons(),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  _actionButtons() {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Container(
                    height: 45,
                    width: 45,
                    child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Image.asset(
                          'assets/facebook.png',
                          width: 36,
                        )),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Container(
                    height: 45,
                    width: 45,
                    child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Image.asset(
                          'assets/google.png',
                          width: 36,
                        )),
                  )),
              Container(
                height: 45,
                width: 45,
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Icon(Icons.arrow_forward),
                ),
              )
            ],
          )),
    );
  }
}
