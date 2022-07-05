

import 'dart:async';

import 'package:contacts/screen/home/view/Help.dart';
import 'package:contacts/screen/home/view/Settings.dart';
import 'package:contacts/screen/home/view/appmode.dart';
import 'package:contacts/screen/home/view/callhistory.dart';
import 'package:contacts/screen/home/view/splashscreen.dart';
import 'package:contacts/utils/constant/addcontacts.dart';
import 'package:contacts/screen/home/view/callpage.dart';
import 'package:contacts/screen/home/view/contactspage.dart';
import 'package:contacts/screen/home/view/secondpage.dart';
import 'package:flutter/material.dart';

bool themeData = true;
StreamController<bool>data = StreamController();

void main(){
  ThemeData _dark = ThemeData(
    primaryColor: Colors.orange,
    accentColor: Colors.black,
    brightness: Brightness.dark
  );
  ThemeData _light = ThemeData(
    primaryColor: Colors.blue,
    accentColor: Colors.orange,
    brightness: Brightness.light
  );
  runApp(
    StreamBuilder(
      stream:data.stream,
      initialData:true,
      builder:(context,snapshot) {
        return MaterialApp(
          theme: snapshot.data == true ? _light : _dark,
          debugShowCheckedModeBanner: false,

          routes: {
            '/': (context) => MyHomePage(),
            'con': (context) => con_Screen(),
            'sec': (context) => second_Screen(),
            'call': (context) => Call_Screen(),
            'add': (context) => add_contacts(),
            'setting': (context) => Settings_screen(),
            'help': (context) => Help_screen(),
            'callhistory': (context) => call_history(),
            'appMode': (context) => app_Mode(),

          },
        );
      },
    ),
  );
}