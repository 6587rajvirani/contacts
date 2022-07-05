import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class second_Screen extends StatefulWidget {
  const second_Screen({Key? key}) : super(key: key);

  @override
  State<second_Screen> createState() => _second_ScreenState();
}

class _second_ScreenState extends State<second_Screen> {
  @override
  Widget build(BuildContext context) {
    List l1 = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(height: 250,width:375,child: Image.asset("${l1[0]}",fit: BoxFit.fill)),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    InkWell(onTap: (){
                      Navigator.pushNamed(context, 'con', arguments: l1);
                    },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_back,size: 30,),
                      ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.create_outlined,size: 25,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(onTap: ()async{
                        String data ="${l1[2]}";
                        await Share.share("$data");
                      },child: Icon(Icons.share_outlined,size: 25,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.delete,size: 25,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.more_vert,size: 25,),
                    ),
                  ],
                ),

                // CircleAvatar(backgroundImage: AssetImage("${n1[0]}"))
                ]
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8,left: 20),
                      child: Icon(Icons.star,size: 40,),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.mail,size: 40,),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(onTap: (){
                        String number = "tel:+ ${l1[2]}";
                        launchUrl(Uri.parse(number));
                      },child: Icon(Icons.call,size: 40,)),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(right: 8,left: 20),
                      child: Icon(Icons.messenger_outlined,size: 40,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),

              Column(
                children: [
                  Container(
                    height: 550,
                    width: double.infinity,
                    color: Colors.grey.shade800,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.account_circle_sharp,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            SelectableText("${l1[1]}",style: TextStyle(fontSize: 25),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        InkWell(onTap: (){
                          String number = "tel:+ ${l1[2]}";
                          launchUrl(Uri.parse(number));
                        },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.call,size: 35,),
                              ),
                              SizedBox(width: 15,),
                              Text("${l1[2]}",style: TextStyle(fontSize: 25),),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Moblie",style: TextStyle(fontSize: 15),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.mail,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("${l1[3]}",style: TextStyle(fontSize: 12),),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Work",style: TextStyle(fontSize: 15),),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.add_location,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("Gujarat,india",style: TextStyle(fontSize: 25),),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Home",style: TextStyle(fontSize: 15),),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.cake,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("${l1[4]}",style: TextStyle(fontSize: 25),),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Birthday",style: TextStyle(fontSize: 15),),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.keyboard,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("Loves Cricket",style: TextStyle(fontSize: 25),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.supervisor_account_sharp,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("Friends",style: TextStyle(fontSize: 25),),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.person_sharp,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("Phone",style: TextStyle(fontSize: 25),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}