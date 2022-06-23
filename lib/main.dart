import 'package:contacts/screen/home/view/Help.dart';
import 'package:contacts/screen/home/view/Settings.dart';
import 'package:contacts/screen/home/view/callhistory.dart';
import 'package:contacts/screen/home/view/splashscreen.dart';
import 'package:contacts/utils/constant/addcontacts.dart';
import 'package:contacts/screen/home/view/callpage.dart';
import 'package:contacts/screen/home/view/contactspage.dart';
import 'package:contacts/screen/home/view/secondpage.dart';
import 'package:contacts/screen/home/view/true_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
           '/':(context)=>MyHomePage(),
          'con':(context)=>con_Screen(),
          'sec':(context)=>second_Screen(),
          'call':(context)=>Call_Screen(),
          'add':(context)=>add_contacts(),
          'true':(context)=>True_Screen(),
          'setting':(context)=>Settings_screen(),
          'help':(context)=>Help_screen(),
          'callhistory':(context)=>call_history(),


      },
    )
  );
}