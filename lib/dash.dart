
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
            Text('Date: ${now.day} / ${now.month} / ${now.year}',
              style: TextStyle(fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Time:  ${now.hour}: ${now.minute}: ${now.second}',
              style: TextStyle(fontSize: 30.0,
               fontWeight: FontWeight.bold
              ),
            ),
              SizedBox(
                height: 10.0,
            ),
            Text('Forestry',
                // Location shows here
              style: TextStyle(fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),

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
    ),
    );

  }
  DateTime now=new DateTime.now();


}

