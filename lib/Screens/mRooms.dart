import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_website/constants.dart';
import 'package:hotel_website/mWidgets/mAboutUsHome.dart';
import 'package:hotel_website/mWidgets/mAmenitiesHome.dart';
import 'package:hotel_website/mWidgets/mtopNavBar.dart';

import 'contactUs.dart';
class MRooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MTopNavBar(),
            SizedBox(height: 80,),
            RoomsCard(img: 'Assets/Pics/5.jpg',heading: 'Classic Room',text1: sClassic,text2: "Accomodation for 2 Adults",text3: sClassic1,),
            RoomsCard(img: 'Assets/Pics/1.jpg',heading: 'Premium Room',text1: sPremium,text2: "Accomodation for 2 Adults",text3: sPremium1,),
            RoomsCard(img: 'Assets/Images/Family_Club.jpg',heading: 'Family Suite',text1: sFamily,text2: "Accomodation for 4 Adults",text3: sFamily1,),
            SizedBox(height: 80,),
            MAmenitiesHome(),
            SizedBox(height: 80,),
            MAboutUSHome(),
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
      padding: const EdgeInsets.symmetric(vertical:24.0,horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(img,width: double.infinity, ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical:16.0,horizontal: 16),
              child: Container(
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(heading,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(height: 16,),
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: Text(text1,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: Text(text3,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                    ),SizedBox(height: 16,),
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: Text(text2,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                    ),
                    SizedBox(height: 16,),
                    FlatButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs(title: 'ContactUs',)));
                    },child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Send Inquiry'),
                    ),hoverColor: Colors.yellowAccent,color: Colors.yellow,textColor: Colors.black87,),
                  ],
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}