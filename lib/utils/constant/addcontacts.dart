
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
          backgroundColor: Colors.black,
           appBar: AppBar(
            backgroundColor: Colors.orange,
             leading: IconButton(onPressed: (){
                Navigator.pop(context);
             },
             icon: Icon(Icons.clear,size: 20,),
               ),
             centerTitle: false,
             title: Text("New contact",style: TextStyle(color: Colors.white),),
             actions: [
               IconButton(onPressed: (){
                 Navigator.pop(context);
               }, icon:Icon(Icons.check),),
             ],
           ),
     )
    );
  }
}
