import 'dart:async';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  double i=0;
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context,'con');
      }
    );
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      if(i<20)
        {
          setState(() {
            i++;
          });
        }
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Icon(Icons.account_circle_sharp,size: 200,color: Colors.orange,),
                ),
                Text("Contact",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                SizedBox(height: 90,),
                CircularProgressIndicator(
                  value: i/20,
                  backgroundColor: Colors.blue.shade100,
                ),
                SizedBox(height: 5,),
                Text("$i%",style: TextStyle(color: Colors.white),),
                SizedBox(height: 15,),
                Text("Loding",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),
      ),
    );

  }
}