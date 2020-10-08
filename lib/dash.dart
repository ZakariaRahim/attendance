
import 'package:flutter/material.dart';


class Mydash extends StatefulWidget {
  static const String id='dash';
  @override
  _MydashState createState() => _MydashState();
}

class _MydashState extends State<Mydash> {
  @override
  Widget build(BuildContext context) {
    return Container(

    child:  Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text('Dashboard'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Text('personal id shows here'),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
              // Text('Date shows here',
              //   style: TextStyle(fontSize: 20.0),
              // ),
              SizedBox(
                width: 90.0,
              ),
              Text('time shows here',
                style: TextStyle(fontSize: 20.0),),
            ],
            ),
              SizedBox(
                height: 10.0,
            ),
            Text('Location and coordinates shows here',
              style: TextStyle(fontSize: 20.0),),

            SizedBox(
              height: 10.0,
            ),
           Row(
             children: [
               RaisedButton(
                 color: Colors.black54,
                 textColor: Colors.white,
                 onPressed: (){
                   //do something here. e.g generate  User data
                 },
                 child: Text('Generate Details',
                   style: TextStyle(
                       fontSize: 20.0
                   ),),
               ),
               SizedBox(
                 width: 40.0,
               ),
               RaisedButton(
                 color: Colors.black,
                 textColor: Colors.white,
                 onPressed: (){
                   //do something here. e.g submit User data
                 },
                 child: Text('Submit Data',
                   style: TextStyle(fontSize: 20.0
                   ),
                 ),
               ),
             ],
           )

          ],
        ),
      ),
    ),)
    ;

  }
}

class _mydate{
  String date1(){
    var date=new DateTime.now();
    return date1();
  }
}