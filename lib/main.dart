

import 'dart:async';

import 'package:contacts/screen/home/view/Help.dart';
import 'package:contacts/screen/home/view/Settings.dart';
import 'package:contacts/screen/home/view/appmode.dart';
import 'package:contacts/screen/home/view/callhistory.dart';
import 'package:contacts/screen/home/view/splashscreen.dart';
import 'package:contacts/utils/constant/addcontacts.dart';
import 'package:contacts/screen/home/view/contactspage.dart';
import 'package:contacts/screen/home/view/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

bool themeData = true;
StreamController<bool>data = StreamController();

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white10,
    systemNavigationBarIconBrightness: Brightness.dark
  ));
  ThemeData _dark = ThemeData(
     primarySwatch: Colors.pink,
      primaryColor: Colors.amber,
      accentColor: Colors.blue,
      brightness: Brightness.dark,
      splashColor: Colors.blue,
      primaryColorDark: Colors.orange,
      backgroundColor: Colors.green,
      bottomAppBarColor: Colors.amberAccent
  );
  ThemeData _light = ThemeData(
      primarySwatch: Colors.orange,
      accentColor: Colors.blue,
      brightness: Brightness.light,
      splashColor: Colors.orange,
      primaryColorLight: Colors.blue,


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