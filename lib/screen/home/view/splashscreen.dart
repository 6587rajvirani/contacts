import 'dart:async';
import 'package:flutter/material.dart';

import 'contactspage.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) =>con_Screen(),
          ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
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
                Text("Contact",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),)
              ],
            ),
          ],
        ),
      ),
    );

  }
}
