import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Validate form data

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: FormPage(),
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


  var name, phone, address;

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
                children: <Widget>[
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
                      RaisedButton(child: Text("Submit"), onPressed: () {
                        handleSubmit();
                      }),
                      RaisedButton(
                          color: Colors.orange,
                          child: Text("Reset"), onPressed: () {
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
    if(formKey.currentState.validate()){
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

