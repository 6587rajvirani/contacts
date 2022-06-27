
import 'package:flutter/material.dart';
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
  List contacts_Namber=["919514787481","914597682105","917899455600","918521479606","917894895216","912000089547","914577890350","911029378224","914367673458","911258746932","918521479630","918529631470","915252354789","910021458745","918521479630","919632147852","917894215464","916663425175","912000147835","911258749630"];
  List contacts_email=["adalschmidt@gmail.com","alansmith@gmail.com","ameliajones@gmail.com","beyandavis@gmail.com","blakeweaver@gmail.com","christinajohnson@gmail.com","davidwilson@gmail.com","elizabethtaylor@gmail.com","hardikpandya@gmail.com","jaspritbumrah@gmail.com","klrahul@gmail.com","msdhoni@gmail.com","odinsonthor@gmail.com","ravindrajadeja@gmail.com","rishabhpant@gmail.com","rohitsharma@gmail.com","therock@gmail.com","tonystark@gmail.com","viratkohli@gmail.com","yuzvendrachahal@gmail.com"];
  List contacts_bithofday=["11 Aug","21 Jun","16 Oct","30 Nov","25 Sep","5 Aug","31 May","1 Oct","3 July","9 Sep","22 Aug","19 Nov","20 June","8 Sep","25 March","18 Feb","10 Dec","17 Feb","29 June","12 Dec",];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            leading: Icon(Icons.account_box_sharp,color: Colors.orange,),
            backgroundColor: Colors.orange,
            centerTitle: true,
            title: Container(child: Text("Contacts")),
            actions: [
              PopupMenuButton(itemBuilder: (context){
                return
                  [
                    PopupMenuItem(child: InkWell(onTap: (){
                      Navigator.pushNamed(context, 'callhistory', arguments: l1);},
                       child: Text("your city",style: TextStyle(color: Colors.white),)),),
                    PopupMenuItem(child: InkWell(onTap: (){
                      Navigator.pushNamed(context, 'setting', arguments: l1);},
                        child: Text("Settings",style: TextStyle(color: Colors.white),)),),
                    PopupMenuItem(child: InkWell(onTap: (){
                      Navigator.pushNamed(context, 'help', arguments: l1);},
                         child: Text("Help & feedback",style: TextStyle(color: Colors.white),)),

                    ),
                  ];
              },icon:Icon(Icons.more_vert),
                color: Colors.deepOrange,
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
                              Text("${contacts_Name[index]}",style: TextStyle(color: Colors.white,fontSize: 15),),
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
                               color: Colors.orange,
                               borderRadius:BorderRadius.circular(80),
                             ),
                             child:Icon(Icons.add,size: 50,color: Colors.white,),
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
