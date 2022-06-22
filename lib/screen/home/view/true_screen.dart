
import 'package:flutter/material.dart';

class True_Screen extends StatefulWidget {
  const True_Screen({Key? key}) : super(key: key);

  @override
  State<True_Screen> createState() => _True_ScreenState();
}

class _True_ScreenState extends State<True_Screen> {
  @override
  Widget build(BuildContext context) {
    List l1 = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(),
              Expanded(child: Container(width: double.infinity,child: Image.asset("${l1[6]}",fit: BoxFit.fill,))),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 6.5,bottom:245),
                        child: IconButton(onPressed: (){
                          Navigator.pushNamed(context, 'sec', arguments: l1);
                        }, icon:Icon(Icons.clear,color: Colors.black,size: 30,),
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
