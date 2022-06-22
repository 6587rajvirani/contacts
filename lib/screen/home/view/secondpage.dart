import 'package:flutter/material.dart';

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
        backgroundColor: Colors.black,
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
                        child: Icon(Icons.arrow_back,color: Colors.white,size: 30,),
                      ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.create_outlined,color: Colors.white,size: 25,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.share_outlined,color: Colors.white,size: 25,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.delete,color: Colors.white,size: 25,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.more_vert,color: Colors.white,size: 25,),
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
                      child: Icon(Icons.star,color: Colors.white,size: 40,),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.mail,color: Colors.white,size: 40,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(onTap: (){
                        Navigator.pushNamed(context, 'call', arguments: l1);
                      },child: Icon(Icons.call,color: Colors.white,size: 40,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8,left: 20),
                      child: Icon(Icons.messenger_outlined,color: Colors.white,size: 40,),
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
                              child: Icon(Icons.account_circle_sharp,color: Colors.white,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("${l1[1]}",style: TextStyle(color: Colors.white,fontSize: 25),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(onTap:(){
                                Navigator.pushNamed(context, 'call', arguments: l1);
                              },child: Icon(Icons.call,color: Colors.white,size: 35,)),
                            ),
                            SizedBox(width: 15,),
                            Text("${l1[2]}",style: TextStyle(color: Colors.white,fontSize: 25),),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Moblie",style: TextStyle(color: Colors.white,fontSize: 15),),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.mail,color: Colors.white,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("${l1[3]}",style: TextStyle(color: Colors.white,fontSize: 12),),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Work",style: TextStyle(color: Colors.white,fontSize: 15),),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.add_location,color: Colors.white,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("Gujarat,india",style: TextStyle(color: Colors.white,fontSize: 25),),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 15),),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.cake,color: Colors.white,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("${l1[4]}",style: TextStyle(color: Colors.white,fontSize: 25),),
                            Expanded(child: Container()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Birthday",style: TextStyle(color: Colors.white,fontSize: 15),),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.keyboard,color: Colors.white,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("Loves Cricket",style: TextStyle(color: Colors.white,fontSize: 25),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.supervisor_account_sharp,color: Colors.white,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("Friends",style: TextStyle(color: Colors.white,fontSize: 25),),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.person_sharp,color: Colors.white,size: 35,),
                            ),
                            SizedBox(width: 15,),
                            Text("Phone",style: TextStyle(color: Colors.white,fontSize: 25),),
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