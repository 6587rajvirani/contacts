import 'package:flutter/material.dart';
class Help_screen extends StatefulWidget {
  const Help_screen({Key? key}) : super(key: key);

  @override
  State<Help_screen> createState() => _Help_screenState();
}

class _Help_screenState extends State<Help_screen> {
  @override
  Widget build(BuildContext context) {
    List l1 = ModalRoute.of(context)!.settings.arguments as List;
    return Container();
  }
}
