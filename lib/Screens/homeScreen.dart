import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hotel_website/Widgets/aboutUsHome.dart';
import 'package:hotel_website/Widgets/responsive.dart';
import 'package:hotel_website/Widgets/roomsHome.dart';
import 'package:hotel_website/constants.dart';
import 'package:hotel_website/Widgets/imgCarousel.dart';
import 'package:hotel_website/Widgets/amenitiesHome.dart';
import 'package:hotel_website/Widgets/topNavBar.dart';
import 'package:hotel_website/Widgets/maps.dart';
import 'package:hotel_website/mWidgets/mAboutUsHome.dart';
import 'package:hotel_website/mWidgets/mAmenitiesHome.dart';
import 'package:hotel_website/mWidgets/mImgCarousel.dart';
import 'package:hotel_website/mWidgets/mMaps.dart';
import 'package:hotel_website/mWidgets/mobileOurStoryHome.dart';
import 'package:hotel_website/mWidgets/mRoomsHome.dart';
import 'package:hotel_website/mWidgets/mtopNavBar.dart';
import 'keyPress.dart';
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeyPress(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            !Responsive.isMobile(context)?TopNavBar() :MTopNavBar(),
            !Responsive.isMobile(context)?ImgCarousel() :MImgCarousel(),
            Container(
              height: !Responsive.isMobile(context)?80 :30,
              width: Responsive.sWidth(context),
              color: kGoldColor,
              child: Center(
                child: Text(
                  '\"Hospitality is simply an opportunity to show love and care\"',
                  style: TextStyle(
                      fontSize: !Responsive.isMobile(context)?25 :11,
                      fontWeight: FontWeight.bold,
                      color: kLogoBgColor),
                ),
              ),
            ),
            !Responsive.isMobile(context)?SizedBox.shrink() :MOurStoryHome(),
            !Responsive.isMobile(context)?SizedBox.shrink() :Image.asset('Assets/Images/winter.jpg',width: double.infinity,),
            SizedBox(height: 16,),
            !Responsive.isMobile(context)?RoomsHome():MRoomsHome(),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: !Responsive.isMobile(context)?AmenitiesHome():MAmenitiesHome(),
            ),
            !Responsive.isMobile(context)? Map():MMap(),
            !Responsive.isMobile(context)?AboutUSHome():MAboutUSHome(),
          ],
        ),
      ),
    );
  }
}
