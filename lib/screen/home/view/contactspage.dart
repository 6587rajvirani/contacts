
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class con_Screen extends StatefulWidget {
  const con_Screen({Key? key}) : super(key: key);

  @override
  State<con_Screen> createState() => _con_ScreenState();
}
class _con_ScreenState extends State<con_Screen> {


  List l1=[];

  List contacts_Name=["Adal Schmidt","Alan Smith","Amelia Jones","Beyan Davis","Blake Weaver","Christina Johnson","David Wilson","Elizabeth Taylor","Hardik Pandya","Jasprit Bumrah","KL Rahul","MS Dhoni","Odin Son Thor","Ravindra Jadeja","Rishabh Pant","Rohit Sharma","The Rock","Tony Stark","Virat Kohli","Yuzvendra Chahal"];
  List contacts_Image=["assets/image/m1.jpeg","assets/image/m2.jpeg","assets/image/m3.webp","assets/image/m4.jpeg","assets/image/m5.jpeg","assets/image/m6.webp","assets/image/m8.jpeg","assets/image/m9.jpeg","assets/image/m11.jpeg","assets/image/m13.webp","assets/image/m14.jpeg","assets/image/m15.jpeg","assets/image/m12.webp","assets/image/m16.jpeg","assets/image/m18.jpeg","assets/image/m17.jpeg","assets/image/m7.jpeg","assets/image/m10.jpeg","assets/image/m19.jpeg","assets/image/m20.jpeg"];
  List contacts_Namber=["9514787481","4597682105","7899455600","8521479606","7894895216","2000089547","4577890350","1029378224","4367673458","1258746932","8521479630","8529631470","5252354789","1021458745","8521479630","9632147852","7894215464","6663425175","2000147835","1258749630"];
  List contacts_email=["adalschmidt@gmail.com","alansmith@gmail.com","ameliajones@gmail.com","beyandavis@gmail.com","blakeweaver@gmail.com","christinajohnson@gmail.com","davidwilson@gmail.com","elizabethtaylor@gmail.com","hardikpandya@gmail.com","jaspritbumrah@gmail.com","klrahul@gmail.com","msdhoni@gmail.com","odinsonthor@gmail.com","ravindrajadeja@gmail.com","rishabhpant@gmail.com","rohitsharma@gmail.com","therock@gmail.com","tonystark@gmail.com","viratkohli@gmail.com","yuzvendrachahal@gmail.com"];
  List contacts_bithofday=["11 Aug","21 Jun","16 Oct","30 Nov","25 Sep","5 Aug","31 May","1 Oct","3 July","9 Sep","22 Aug","19 Nov","20 June","8 Sep","25 March","18 Feb","10 Dec","17 Feb","29 June","12 Dec",];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Container(child: Text("Contacts",style: GoogleFonts.   abel())),
            actions: [
              PopupMenuButton(itemBuilder: (context){
                return
                  [
                    PopupMenuItem(child: InkWell(onTap: (){
                      Navigator.pushNamed(context,'callhistory', arguments: l1);},
                       child: Text("your city")),),
                    PopupMenuItem(child: InkWell(onTap: (){
                      Navigator.pushNamed(context,'setting', arguments: l1);},
                        child: Text("Settings")),),
                    PopupMenuItem(child: InkWell(onTap: (){
                      String link = "https://support.google.com/contacts/answer/9423168?hl=en";
                      Uri url = Uri.parse(link);
                      launchUrl(url);}
                         ,child: Text("Help & feedback",)),),
                   PopupMenuItem(child: InkWell(onTap: (){
                      Navigator.pushNamed(context,'appMode', arguments: l1);},
                        child: Text("AppMode")),),

                  ];
              },icon:Icon(Icons.more_vert),
              ),
            ],
          ),
          body:Stack(
            children: [
              ListView.builder(itemCount:contacts_Name.length,
                  itemBuilder:(context, index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 8,left: 8,top: 4,bottom: 4),
                      child: Container(
                        height: 80,
                        child: InkWell(onTap: (){
                    l1.clear();
                    l1.add("${contacts_Image[index]}");
                    l1.add("${contacts_Name[index]}");
                    l1.add("${contacts_Namber[index]}");
                    l1.add("${contacts_email[index]}");
                    l1.add("${contacts_bithofday[index]}");
                    Navigator.pushNamed(context, 'sec', arguments: l1);
                    },

                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("${contacts_Image[index]}"),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text("${contacts_Name[index]}",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                         InkWell(onTap: (){
                           String link = "https://contacts.google.com/";
                           Uri url = Uri.parse(link);
                           launchUrl(url);
                         },
                           child: Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                             decoration: BoxDecoration(
                               borderRadius:BorderRadius.circular(80),
                             ),
                             child:Icon(Icons.add,size: 50),
                           ),
                         ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
       )
    );
  }
}
