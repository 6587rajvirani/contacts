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
          backgroundColor: Colors.black,
           body: Center(
             child: Container(
               color: Colors.white,
               child: DropdownButton(
                 value: selectcity,
                 onChanged: (value){
                   setState(() {
                     selectcity = value as String;
                   });
                 },
                 items: [
                   DropdownMenuItem(child: Text("surat"),value: "surat",),
                   DropdownMenuItem(child: Text("Delhi"),value: "Delhi",),
                   DropdownMenuItem(child: Text("Mumbai"),value: "Mumbai",),
                   DropdownMenuItem(child: Text("Bangalore"),value: "Bangalore",),
                   DropdownMenuItem(child: Text("Hyderabad"),value: "Hyderabad",),
                   DropdownMenuItem(child: Text("Ahmedabad"),value: "Ahmedabad",),
                   DropdownMenuItem(child: Text("Chennai"),value: "Chennai",),
                   DropdownMenuItem(child: Text("Kolkata"),value: "Kolkata",),
                   DropdownMenuItem(child: Text("Pune"),value: "Pune",),
                   DropdownMenuItem(child: Text("Jaipur"),value: "Jaipur",),
                   DropdownMenuItem(child: Text("Lucknow"),value: "ucknow",),
                   DropdownMenuItem(child: Text("Kanpur"),value: "Kanpur",),
                   DropdownMenuItem(child: Text("Nagpur"),value: "Nagpur",),
                   DropdownMenuItem(child: Text("Indore"),value: "Indore",),
                   DropdownMenuItem(child: Text("Bhopal"),value: "Bhopal",),
                   DropdownMenuItem(child: Text("Visakhapatnam"),value: "Visakhapatnam",),
                   DropdownMenuItem(child: Text("Pimpri-Chinchwad"),value: "Pimpri-Chinchwad",),
                   DropdownMenuItem(child: Text("Patna"),value: "Patna",),
                   DropdownMenuItem(child: Text("Vadodara"),value: "Vadodara",),
                   DropdownMenuItem(child: Text("Ghaziabad"),value: "Ghaziabad",),
                   DropdownMenuItem(child: Text("Ludhiana"),value: "Ludhiana",),
                   DropdownMenuItem(child: Text("Agra"),value: "Agra",),
                   DropdownMenuItem(child: Text("Nashik"),value: "Nashik",),
                   DropdownMenuItem(child: Text("Ranchi"),value: "Ranchi",),
                   DropdownMenuItem(child: Text("Faridabad"),value: "Faridabad",),
                   DropdownMenuItem(child: Text("Meerut"),value: "Meerut",),
                   DropdownMenuItem(child: Text("Rajkot"),value: "Rajkot",),
                   DropdownMenuItem(child: Text("Kalyan-Dombivli"),value: "Kalyan-Dombivli",),
                   DropdownMenuItem(child: Text("Vasai-Virar"),value: "Vasai-Virar",),
                   DropdownMenuItem(child: Text("Navi Mumbai"),value: "Navi Mumbai",),
                   DropdownMenuItem(child: Text("Allahabad"),value: "Allahabad",),
                   DropdownMenuItem(child: Text("Howrah"),value: "Howrah",),
                   DropdownMenuItem(child: Text("Gwalior"),value: "Gwalior",),
                   DropdownMenuItem(child: Text("Jabalpur"),value: "Jabalpur",),
                   DropdownMenuItem(child: Text("Vijayawada"),value: "Vijayawada",),
                   DropdownMenuItem(child: Text("Jodhpur"),value: "Jodhpur",),
                   DropdownMenuItem(child: Text("Madurai"),value: "Madurai",),
                   DropdownMenuItem(child: Text("Raipur"),value: "Raipur",),
                   DropdownMenuItem(child: Text("Kota"),value: "Kota",),
                   DropdownMenuItem(child: Text("Chandigarh"),value: "Chandigarh",),
                   DropdownMenuItem(child: Text("Guwahati"),value: "Guwahati",),
                   DropdownMenuItem(child: Text("Solapur"),value: "Solapur",),
                   DropdownMenuItem(child: Text("Tiruchirappalli"),value: "Tiruchirappalli",),
                   DropdownMenuItem(child: Text("Bareilly"),value: "Bareilly",),
                   DropdownMenuItem(child: Text("Aligarh"),value: "Aligarh",),
                   DropdownMenuItem(child: Text("Tiruppur"),value: "Tiruppur",),
                   DropdownMenuItem(child: Text("Noida"),value: "Noida",),
                   DropdownMenuItem(child: Text("Jamshedpur"),value: "Jamshedpur",),
                   DropdownMenuItem(child: Text("Bhilai"),value: "Bhilai",),
                   DropdownMenuItem(child: Text("Kochi"),value: "Kochi",),
                 ],
                 dropdownColor: Colors.white,
               ),
             ),
           ),
     )
    );
  }
}
