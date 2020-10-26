import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Dropdown list

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: FormPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();

  var name, selectName, phone, address, gender;

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
    this._loadUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  DropdownButtonFormField(
                      hint: Text("Please select your name"),
                      value: this.selectName,
                      items: users.map((user) {
                        return DropdownMenuItem<String>(
                          child: Text(user['name']),
                          value: user['name'],
                        );
                      }).toList(),
                      onChanged: (val) {
                        print(val);
                        setState(() {
                          this.selectName = val;
                        });
                      }),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(labelText: "Enter a name"),
                    validator: (value) {
                      if (value.length == 0) return ("Name is required");
                    },
                    onSaved: (value) {
                      this.name = value;
                    },
                  ),
                  DropdownButtonFormField(
                      hint: Text("Please select gender"),
                      value: gender,
                      items: [
                        DropdownMenuItem(value: 'male', child: Text('Male')),
                        DropdownMenuItem(
                            value: 'female', child: Text('Female')),
                      ],
                      onChanged: (val) {
                        print(val);
                        setState(() {
                          this.gender = val;
                        });
                      }),
                  TextFormField(
                    controller: phoneController,
                    decoration:
                    InputDecoration(labelText: "Enter a phone number"),
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                    validator: (value) {
                      if (value.length < 11)
                        return ("Phone number is must be 11 digit");
                    },
                    onSaved: (value) {
                      this.phone = value;
                    },
                  ),
                  TextFormField(
                    controller: addressController,
                    decoration: InputDecoration(labelText: "Enter an address"),
                    validator: (value) {
                      if (value.length == 0) return ("Address is required");
                    },
                    onSaved: (value) {
                      this.address = value;
                    },
                  ),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                          child: Text("Submit"),
                          onPressed: () {
                            handleSubmit();
                          }),
                      RaisedButton(
                          color: Colors.orange,
                          child: Text("Reset"),
                          onPressed: () {
                            handleReset();
                          })
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void handleSubmit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      //do something
      //if all validation is okay then we will do something
      print(this.name);
      print(this.phone);
      print(this.address);
    }
  }

  void handleReset() {
    nameController.clear();
    phoneController.clear();
    addressController.clear();
  }
}
