import 'package:flutter/material.dart';
class call_history extends StatefulWidget {
  const call_history({Key? key}) : super(key: key);

  @override
  State<call_history> createState() => _call_historyState();
}

class _call_historyState extends State<call_history> {
  List<String>city=["surat","Delhi","Mumbai", "Bangalore", "Hyderabad", "Ahmedabad", "Chennai", "Kolkata",
    "Pune", "Jaipur","Lucknow","Kanpur","Nagpur", "Indore", "Thane", "Bhopal", "Visakhapatnam", "Pimpri-Chinchwad", "Patna", "Vadodara", "Ghaziabad", "Ludhiana", "Agra",
    "Nashik", "Ranchi", "Faridabad", "Meerut", "Rajkot", "Kalyan-Dombivli", "Vasai-Virar", "Navi Mumbai", "Allahabad", "Howrah", "Gwalior", "Jabalpur",
    "Vijayawada", "Jodhpur","Madurai", "Raipur", "Kota", "Chandigarh", "Guwahati", "Solapur", "Tiruchirappalli", "Bareilly", "Aligarh", "Tiruppur", "Noida", "Jamshedpur", "Bhilai","Kochi",
  ];
  String selectcity='surat';
  @override
  Widget build(BuildContext context) {
    List l1 = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
        child: Scaffold(
           body: Center(
             child: Column(
               children: [
                 Text("Select Your City",style: TextStyle(fontSize: 40),),
                Container(
                  color: Colors.black,
                 child: DropdownButton(
                   value: selectcity,
                   onChanged: (value){
                     setState(() {
                       selectcity = value as String;
                     });
                   },
                   items: [
                     DropdownMenuItem(child: Text("surat",style: TextStyle(color: Colors.white),),value: "surat",),
                     DropdownMenuItem(child: Text("Delhi",style: TextStyle(color: Colors.white),),value: "Delhi",),
                     DropdownMenuItem(child: Text("Mumbai",style: TextStyle(color: Colors.white),),value: "Mumbai",),
                     DropdownMenuItem(child: Text("Bangalore",style: TextStyle(color: Colors.white),),value: "Bangalore",),
                     DropdownMenuItem(child: Text("Hyderabad",style: TextStyle(color: Colors.white),),value: "Hyderabad",),
                     DropdownMenuItem(child: Text("Ahmedabad",style: TextStyle(color: Colors.white),),value: "Ahmedabad",),
                     DropdownMenuItem(child: Text("Chennai",style: TextStyle(color: Colors.white),),value: "Chennai",),
                     DropdownMenuItem(child: Text("Kolkata",style: TextStyle(color: Colors.white),),value: "Kolkata",),
                     DropdownMenuItem(child: Text("Pune",style: TextStyle(color: Colors.white),),value: "Pune",),
                     DropdownMenuItem(child: Text("Jaipur",style: TextStyle(color: Colors.white),),value: "Jaipur",),
                     DropdownMenuItem(child: Text("Lucknow",style: TextStyle(color: Colors.white),),value: "ucknow",),
                     DropdownMenuItem(child: Text("Kanpur",style: TextStyle(color: Colors.white),),value: "Kanpur",),
                     DropdownMenuItem(child: Text("Nagpur",style: TextStyle(color: Colors.white),),value: "Nagpur",),
                     DropdownMenuItem(child: Text("Indore",style: TextStyle(color: Colors.white),),value: "Indore",),
                     DropdownMenuItem(child: Text("Bhopal",style: TextStyle(color: Colors.white),),value: "Bhopal",),
                     DropdownMenuItem(child: Text("Visakhapatnam",style: TextStyle(color: Colors.white),),value: "Visakhapatnam",),
                     DropdownMenuItem(child: Text("Pimpri-Chinchwad",style: TextStyle(color: Colors.white),),value: "Pimpri-Chinchwad",),
                     DropdownMenuItem(child: Text("Patna",style: TextStyle(color: Colors.white),),value: "Patna",),
                     DropdownMenuItem(child: Text("Vadodara",style: TextStyle(color: Colors.white),),value: "Vadodara",),
                     DropdownMenuItem(child: Text("Ghaziabad",style: TextStyle(color: Colors.white),),value: "Ghaziabad",),
                     DropdownMenuItem(child: Text("Ludhiana",style: TextStyle(color: Colors.white),),value: "Ludhiana",),
                     DropdownMenuItem(child: Text("Agra",style: TextStyle(color: Colors.white),),value: "Agra",),
                     DropdownMenuItem(child: Text("Nashik",style: TextStyle(color: Colors.white),),value: "Nashik",),
                     DropdownMenuItem(child: Text("Ranchi",style: TextStyle(color: Colors.white),),value: "Ranchi",),
                     DropdownMenuItem(child: Text("Faridabad",style: TextStyle(color: Colors.white),),value: "Faridabad",),
                     DropdownMenuItem(child: Text("Meerut",style: TextStyle(color: Colors.white),),value: "Meerut",),
                     DropdownMenuItem(child: Text("Rajkot",style: TextStyle(color: Colors.white),),value: "Rajkot",),
                     DropdownMenuItem(child: Text("Kalyan-Dombivli",style: TextStyle(color: Colors.white),),value: "Kalyan-Dombivli",),
                     DropdownMenuItem(child: Text("Vasai-Virar",style: TextStyle(color: Colors.white),),value: "Vasai-Virar",),
                     DropdownMenuItem(child: Text("Navi Mumbai",style: TextStyle(color: Colors.white),),value: "Navi Mumbai",),
                     DropdownMenuItem(child: Text("Allahabad",style: TextStyle(color: Colors.white),),value: "Allahabad",),
                     DropdownMenuItem(child: Text("Howrah",style: TextStyle(color: Colors.white),),value: "Howrah",),
                     DropdownMenuItem(child: Text("Gwalior",style: TextStyle(color: Colors.white),),value: "Gwalior",),
                     DropdownMenuItem(child: Text("Jabalpur",style: TextStyle(color: Colors.white),),value: "Jabalpur",),
                     DropdownMenuItem(child: Text("Vijayawada",style: TextStyle(color: Colors.white),),value: "Vijayawada",),
                     DropdownMenuItem(child: Text("Jodhpur",style: TextStyle(color: Colors.white),),value: "Jodhpur",),
                     DropdownMenuItem(child: Text("Madurai",style: TextStyle(color: Colors.white),),value: "Madurai",),
                     DropdownMenuItem(child: Text("Raipur",style: TextStyle(color: Colors.white),),value: "Raipur",),
                     DropdownMenuItem(child: Text("Kota",style: TextStyle(color: Colors.white),),value: "Kota",),
                     DropdownMenuItem(child: Text("Chandigarh",style: TextStyle(color: Colors.white),),value: "Chandigarh",),
                     DropdownMenuItem(child: Text("Guwahati",style: TextStyle(color: Colors.white),),value: "Guwahati",),
                     DropdownMenuItem(child: Text("Solapur",style: TextStyle(color: Colors.white),),value: "Solapur",),
                     DropdownMenuItem(child: Text("Tiruchirappalli",style: TextStyle(color: Colors.white),),value: "Tiruchirappalli",),
                     DropdownMenuItem(child: Text("Bareilly",style: TextStyle(color: Colors.white),),value: "Bareilly",),
                     DropdownMenuItem(child: Text("Aligarh",style: TextStyle(color: Colors.white),),value: "Aligarh",),
                     DropdownMenuItem(child: Text("Tiruppur",style: TextStyle(color: Colors.white),),value: "Tiruppur",),
                     DropdownMenuItem(child: Text("Noida",style: TextStyle(color: Colors.white),),value: "Noida",),
                     DropdownMenuItem(child: Text("Jamshedpur",style: TextStyle(color: Colors.white),),value: "Jamshedpur",),
                     DropdownMenuItem(child: Text("Bhilai",style: TextStyle(color: Colors.white),),value: "Bhilai",),
                     DropdownMenuItem(child: Text("Kochi",style: TextStyle(color: Colors.white),),value: "Kochi",),
                   ],
                   dropdownColor: Colors.black,
                 ),
               ),
             ],
             ),
           ),
     )
    );
  }
}
