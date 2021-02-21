import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hotel_website/Widgets/responsive.dart';
import 'package:hotel_website/constants.dart';
import 'package:hotel_website/mWidgets/mAboutUsHome.dart';
import 'package:hotel_website/mWidgets/mtopNavBar.dart';
class MAboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLogoBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MTopNavBar(),
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: kLogoBgColor,
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
                      Text('OUR STORY~',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: "Playfair"),),
                      SizedBox(height: 16,),
                      Text(SourStory1,style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: "Playfair"),),
                      SizedBox(height: 16,),
                      Text(SourStory2,style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: "Playfair"),),
                      SizedBox(height: 16,),
                      Text(SourStory3,style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: "Playfair"),),
                      SizedBox(height: 16,),
                      Text("Why Snow Bloom ?",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Pacifico"),),
                      SizedBox(height: 16,),
                      Text(sWhySnow,style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: "Playfair"),),
                      SizedBox(height: 16,),
                      Text(SourStory3,style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: "Playfair"),),
                      SizedBox(height: 16,),
                      Text(SourStory4,style: TextStyle(fontSize: 16,color: Colors.white,fontFamily: "Playfair"),),
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
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
                                child: Image.network(item, fit: BoxFit.cover, width:Responsive.sWidth(context) ),
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
            MAboutUSHome()
          ],
        ),
      ),
    );
  }
}
