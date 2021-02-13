import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hotel_website/Screens/keyPress.dart';
import 'package:hotel_website/Screens/mAboutUs.dart';
import 'package:hotel_website/Widgets/aboutUsHome.dart';
import 'package:hotel_website/Widgets/responsive.dart';
import 'package:hotel_website/Widgets/topNavBar.dart';
import 'package:hotel_website/constants.dart';
class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery. of(context). size. width;
    double sHeight = MediaQuery. of(context). size. height;
    return Responsive.isMobile(context)?MAboutUs() : Scaffold(
      backgroundColor: kLogoBgColor,
      body: KeyPress(
        child: Column(
          children: [
            TopNavBar(),
            SizedBox(height: 20,),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 800),
              child: Container(
                decoration: BoxDecoration(
                  color: kLogoBgColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                      // color: Colors.grey.withOpacity(0.5),
                      color: kGoldColor.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      Text('OUR STORY~',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 16,),
                      Text(SourStory1,style: TextStyle(fontSize: 16,color: Colors.white),),
                      SizedBox(height: 16,),
                      Text(SourStory2,style: TextStyle(fontSize: 16,color: Colors.white),),
                      SizedBox(height: 16,),
                      Text(SourStory3,style: TextStyle(fontSize: 16,color: Colors.white),),
                      SizedBox(height: 16,),
                      Text("Why Snow Bloom ?",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                      SizedBox(height: 16,),
                      Text(sWhySnow,style: TextStyle(fontSize: 16,color: Colors.white),),
                      SizedBox(height: 16,),
                      Text(SourStory3,style: TextStyle(fontSize: 16,color: Colors.white),),
                      SizedBox(height: 16,),
                      Text(SourStory4,style: TextStyle(fontSize: 16,color: Colors.white),),
                      SizedBox(height: 16,),
                      CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 16/9,
                          viewportFraction: 1
                          ,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: false,
                          scrollDirection: Axis.horizontal,
                        ),
                        items: imglinks.map((item) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Center(
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
                                child: Image.asset(item, fit: BoxFit.cover, width:sWidth ),
                              ),
                            ),
                          ),
                        )).toList(),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 80,),
            AboutUSHome()
          ],
        ),
      ),
    );
  }
}
