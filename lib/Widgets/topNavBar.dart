import 'package:flutter/material.dart';
import 'package:hotel_website/Screens/aboutUs.dart';
import 'package:hotel_website/Screens/contactUs.dart';
import 'package:hotel_website/Screens/gallery.dart';
import 'package:hotel_website/Screens/homeScreen.dart';
import 'package:hotel_website/Screens/rooms.dart';
import 'package:hotel_website/Widgets/tariff.dart';
import 'package:hotel_website/constants.dart';
import 'package:hovering/hovering.dart';
class TopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff0f1027),
      child: Padding(
        padding: EdgeInsets.only(left:16.0,right: 16,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network('https://drive.google.com/uc?export=view&id=1A47unG6XPSriUnqhv6-ZhX5ZJ328e0OY',height: 100,width: 100,),
            SizedBox(width: 80,),
            HoverButton(onpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },child: Text('HOME') ,textColor: kGoldColor,hoverTextColor: Colors.yellowAccent,),
            HoverButton(onpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Gallery()));
            },child: Text('GALLERY') ,textColor: kGoldColor,hoverTextColor: Colors.yellowAccent,),
            HoverButton(onpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Rooms()));
            },child: Text('ROOMS') ,textColor: kGoldColor,hoverTextColor: Colors.yellowAccent),
            HoverButton(onpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Tariff()));
            },child: Text('TARIFF') ,textColor: kGoldColor,hoverTextColor: Colors.yellowAccent),
            HoverButton(onpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
            },child: Text('ABOUT US') ,textColor: kGoldColor,hoverTextColor: Colors.yellowAccent,),
            HoverButton(onpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs(title: 'ContactUs',)));
            },child: Text('CONTACT US') ,textColor: kGoldColor,hoverTextColor: Colors.yellowAccent,),



          ],
        ),
      ),
    );
  }
}
