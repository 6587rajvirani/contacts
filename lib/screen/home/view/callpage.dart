import 'package:flutter/material.dart';

class Call_Screen extends StatefulWidget {
  const Call_Screen({Key? key}) : super(key: key);

  @override
  State<Call_Screen> createState() => _Call_ScreenState();
}

class _Call_ScreenState extends State<Call_Screen> {
  @override
  Widget build(BuildContext context) {
    List l1 = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
        child: Scaffold(
          body: Stack(
              children: [
                Container(),
                Expanded(child: Container(width: double.infinity,child: Image.asset("${l1[5]}",fit: BoxFit.fill,))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(bottom: 20),
                          child: InkWell(onTap: (){
                            Navigator.pushNamed(context, 'true', arguments: l1);
                          },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:BorderRadius.circular(80),

                            ),
                              child: Icon(Icons.call_end,size: 50,),
                        ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],

            ),
          ),
    );
  }
}
