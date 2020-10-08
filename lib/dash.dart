
import 'package:flutter/material.dart';

class Dash extends StatelessWidget {
  static const String id='dash';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Mydash(),
    );
  }
}

class Mydash extends StatefulWidget {
  @override
  _MydashState createState() => _MydashState();
}

class _MydashState extends State<Mydash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.dashboard),
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
              Text('Date shows here',
                style: TextStyle(fontSize: 20.0),
              ),
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
    );

  }
}
