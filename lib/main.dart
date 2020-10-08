
import 'package:attenndance/dash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:attenndance/registration.dart';



void main ()=>runApp(MyApp());
class MyApp extends StatelessWidget  {
  static const String id='main';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),

      // initialRoute:MyApp.id ,
      routes: {
        MyApp.id:(context)=>MyApp(),
     Mydash.id:(context)=>Mydash(),
      Registration.id:(context)=> Registration(),



      },
    );

  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Attendance',
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 150.0),
         padding: EdgeInsets.all(1.0),
          width: 550.0,
          height: 590.0,
          color: Colors.black12,
         child:Login(),

        ),
      );
   }
}

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {

    return  Card(
      elevation: 20.0,
      child: Column(
        children: [
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hoverColor: Colors.blueGrey,
              labelText: 'Enter Id',
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
        Container(
          width: 400.0,
          padding: EdgeInsets.all(10.0),
          child:  RaisedButton(

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.teal)),
            color: Colors.black,
            onPressed: (){
              //do something here. e.g submit User data for login upon clicked
              Navigator.pushNamed(context, Mydash.id);
            },
            child: Text('Sign in',
              style: TextStyle(
                color: Colors.white,
                  fontSize: 20.0
              ),),
          ),
        ),

          SizedBox(
            height: 10.0,
          ),
          Container(
            width: 400.0,

            padding: EdgeInsets.all(10.0),
           child: RaisedButton(
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
                 side: BorderSide(color: Colors.teal)),
              color: Colors.black,
              onPressed: (){
                //do something here. e.g route to registration section
                Navigator.pushNamed(context, Registration.id);
              },
              child: Text('Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),),
            ),
          )

        ],
      ),
      //  if there are more to add, just copy and paste from here going.
    );
  }
}

