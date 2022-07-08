
import 'package:contacts/main.dart';
import 'package:flutter/material.dart';
class app_Mode extends StatefulWidget {
  const app_Mode({Key? key}) : super(key: key);

  @override
  State<app_Mode> createState() => _app_ModeState();
}

class _app_ModeState extends State<app_Mode> {
  @override
  Widget build(BuildContext context) {
    List l1 = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(onTap: (){
            Navigator.pop(context);
          },child: Icon(Icons.arrow_back,size: 20)),
          centerTitle: true,
          title: Text("Mode"),
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                children: [
                  Text("App Mode",style: TextStyle(fontSize: 40),),
                  SizedBox(height: 15,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Dark",style: TextStyle(fontSize: 25),),
                  Text("Light",style: TextStyle(fontSize: 25),),

                ],
              ),
              Column(
                children: [
                  Switch(value: themeData, onChanged: (value){
                    setState(() {
                      themeData = value;
                    });
                    data.add(themeData);
                  }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
