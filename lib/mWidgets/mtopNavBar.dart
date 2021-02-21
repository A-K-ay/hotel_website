import 'package:flutter/material.dart';
import 'package:hotel_website/Screens/aboutUs.dart';
import 'package:hotel_website/Screens/contactUs.dart';
import 'package:hotel_website/Screens/gallery.dart';
import 'package:hotel_website/Screens/homeScreen.dart';
import 'package:hotel_website/Screens/rooms.dart';
import 'package:hotel_website/Widgets/tariff.dart';
import 'package:hotel_website/constants.dart';
class MTopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color(0xff0f1027),
      child: Padding(
        padding: EdgeInsets.only(left:8.0,right: 8,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network('https://drive.google.com/uc?export=view&id=1A47unG6XPSriUnqhv6-ZhX5ZJ328e0OY',height: 50,width: 50,),
            SizedBox(width: 20,),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top:10.0,bottom: 10,left: 2,right: 2),
                child: Text('HOME',style: TextStyle(fontSize: 8,color: kGoldColor),),
              ),
            ),),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Gallery()));
            },child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top:10,bottom: 10,left: 2,right: 2),
                child: Text('GALLERY',style: TextStyle(fontSize: 8,color: kGoldColor),),
              ),
            ),),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Rooms()));
            },child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top:10.0,bottom: 10,left: 2,right: 2),
                child: Text('ROOMS',style: TextStyle(fontSize: 8,color: kGoldColor),),
              ),
            ),),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Tariff()));
            },child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top:10.0,bottom: 10,left: 2,right: 2),
                child: Text('TARIFF',style: TextStyle(fontSize: 8,color: kGoldColor),),
              ),
            ),),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
            },child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top:10.0,bottom: 10,left: 2,right: 2),
                child: Text('ABOUT US',style: TextStyle(fontSize: 8,color: kGoldColor),),
              ),
            ),),
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs(title: 'ContactUs',)));
            },child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top:10.0,bottom: 10,left: 2,right: 2),
                child: Text('CONTACT US',style: TextStyle(fontSize: 8,color: kGoldColor),),
              ),
            ),),



          ],
        ),
      ),
    );
  }
}
