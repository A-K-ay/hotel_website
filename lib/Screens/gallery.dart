import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hotel_website/Screens/keyPress.dart';
import 'package:hotel_website/Screens/mGallery.dart';
import 'package:hotel_website/Widgets/aboutUsHome.dart';
import 'package:hotel_website/Widgets/responsive.dart';
import 'package:hotel_website/Widgets/topNavBar.dart';
import 'package:hotel_website/constants.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)?MGallery() :Scaffold(
      body: KeyPress(
        drag: 5.8,
        child: Column(
          children: [
            TopNavBar(),
            SizedBox(height: 20,),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(15, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical:90.0,horizontal: 16,),
                  child: Material(
                      elevation: 5,
                      child: Image.network(imglinks[index],fit: BoxFit.fill,
                  )),
                );
              }),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(10, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical:90.0,horizontal: 16,),
                  child: Material(
                      elevation: 5,
                      child: Image.network(
                        newimglinks[index],fit: BoxFit.fill,
                      )),
                );
              }),
            ),
            AboutUSHome()
          ],
        ),
      ),
    );
  }
}
