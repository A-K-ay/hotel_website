import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_website/Screens/keyPress.dart';
import 'package:hotel_website/Screens/mRooms.dart';
import 'package:hotel_website/Widgets/aboutUsHome.dart';
import 'package:hotel_website/Widgets/amenitiesHome.dart';
import 'package:hotel_website/Widgets/responsive.dart';
import 'package:hotel_website/Widgets/topNavBar.dart';
import 'package:hotel_website/constants.dart';

import 'contactUs.dart';
class Rooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)?MRooms() :Scaffold(
      body: KeyPress(
        drag: 2.3,
        child: Column(
          children: [
            TopNavBar(),
            SizedBox(height: 80,),
            RoomsCard(img: 'https://drive.google.com/uc?export=view&id=15TrCDGLdzMqwi9C2rZmIUTQgDu1LjGcZ',heading: 'Classic Room',text1: sClassic,text2: "Accommodation for 2 Adults",text3: sClassic1,),
            RoomsCard(img: 'https://drive.google.com/uc?export=view&id=1OpyovgnKL__6KxxCO6RSiEvC2hobwjdh',heading: 'Premium Room',text1: sPremium,text2: "Accommodation for 2 Adults",text3: sPremium1),
            RoomsCard(img: 'https://drive.google.com/uc?export=view&id=1MrzDtwLezQHjyi2RqK3Xrdn34itdTBdV',heading: 'Family Suite',text1: sFamily,text2: "Accommodation for 4 Adults",text3: sFamily1),
            SizedBox(height: 80,),
            AmenitiesHome(),
            SizedBox(height: 80,),
            AboutUSHome(),
          ],
        ),
      ),
    );
  }
}
class RoomsCard extends StatelessWidget {
  RoomsCard({
    @required this.img,@required this.text1,@required this.text2,@required this.text3,@required this.heading,
  });
  final String  img;
  final String text1;
  final String text2;
  final String text3;
  final String  heading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:24.0,horizontal: 80),
      child: Container(
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10)
      ),
      boxShadow: [
      BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
      ),
      ],),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
      ),child: Image.network(img,height: 350, )),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical:16.0,horizontal: 80),
                child: Container(
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(heading,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,fontFamily: "Playfair"),),
                      SizedBox(height: 16,),
                      Text(text1,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Playfair"),),
                      SizedBox(height: 16,),
                      Text(text3,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Playfair"),),
                      SizedBox(height: 16,),
                      Text(text2,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Playfair"),),
                      SizedBox(height: 16,),
                      FlatButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs(title: 'ContactUs',)));
                      },child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Send Inquiry',),
                      ),hoverColor: Colors.yellowAccent,color: Colors.yellow,textColor: Colors.black87,),
                    ],
                  ),

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}