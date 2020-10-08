import 'package:flutter/material.dart';


class Registration extends StatefulWidget {
  static const String id='registration';
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registration',
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 150.0),
        padding: EdgeInsets.all(1.0),
        width: 550.0,
        height: 250.0,
        color: Colors.black12,
        child:  Card(
          elevation: 20.0,
          child: Column(
            children: [
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hoverColor: Colors.blueGrey,
                  labelText: 'Company Id',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hoverColor: Colors.black54,
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                color: Colors.black,
                textColor: Colors.white,
                onPressed: (){
                  //do something here. e.g submit User data
                },
                child: Text('Sign Up',
                  style: TextStyle(
                 fontSize: 20.0
                  ),),
              ),
            ],
          ),
          //  if there are more to add, just copy and paste from the above.
        ),

      ),
    );
  }
}