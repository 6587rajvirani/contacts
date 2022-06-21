import 'package:contacts/addcontacts.dart';
import 'package:contacts/callpage.dart';
import 'package:contacts/contactspage.dart';
import 'package:contacts/secondpage.dart';
import 'package:contacts/true_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
          '/':(context)=>con_Screen(),
          'sec':(context)=>second_Screen(),
          'call':(context)=>Call_Screen(),
          'add':(context)=>add_contacts(),
          'true':(context)=>True_Screen(),

      },
    )
  );
}