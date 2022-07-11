
import 'package:flutter/material.dart';

class add_contacts extends StatefulWidget {
  const add_contacts({Key? key}) : super(key: key);

  @override
  State<add_contacts> createState() => _add_contactsState();
}

class _add_contactsState extends State<add_contacts> {
  @override
  Widget build(BuildContext context) {
    List l1 = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: InkWell(onTap:(){
              Navigator.pop(context);
            },child: Icon(Icons.arrow_back,size: 30,)),
            centerTitle: true,
            title: Text("AddContacts",style: TextStyle(fontSize: 30),),
          ),
          body: Container(),
      )
    );
  }
}
