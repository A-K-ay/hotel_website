import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hotel_website/Widgets/responsive.dart';
import 'package:hotel_website/Widgets/topNavBar.dart';
import 'package:hotel_website/constants.dart';
import 'package:hotel_website/mWidgets/mAboutUsHome.dart';
import 'package:hotel_website/mWidgets/mtopNavBar.dart';

class MGallery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              MTopNavBar(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(height: 250, child:CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    // aspectRatio: 16/9,
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
                  items: imglinks.map((item) => Container(
                    child: Center(
                      child: Image.asset(item, fit: BoxFit.cover, width: Responsive.sWidth(context) ),
                    ),
                  )).toList(),
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(height: 250, child:CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    // aspectRatio: 16/9,
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
                  items: newimglinks.map((item) => Container(
                    child: Center(
                      child: Image.asset(item, fit: BoxFit.cover, width: Responsive.sWidth(context) ),
                    ),
                  )).toList(),
                ),),
              ),
              MAboutUSHome(),
            ],
          ),
        ));
  }
}