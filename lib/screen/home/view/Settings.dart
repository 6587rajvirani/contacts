
import 'package:flutter/material.dart';

class Settings_screen extends StatefulWidget {
  const Settings_screen({Key? key}) : super(key: key);

  @override
  State<Settings_screen> createState() => _Settings_screenState();
}

class _Settings_screenState extends State<Settings_screen> {
  @override
  Widget build(BuildContext context) {
    List l1 = ModalRoute.of(context)!.settings.arguments as List;
    return Container();
  }
}
