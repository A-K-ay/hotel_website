import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hotel_website/Widgets/responsive.dart';
import 'package:hotel_website/constants.dart';

class MImgCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
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
          items: cImglinks.map((item) => Container(
            child: Center(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.0), BlendMode.darken),
                  child: Image.asset(item, fit: BoxFit.cover, width: Responsive.sWidth(context) ),
                ),
            ),
          )).toList(),
        ),
        Positioned(child: Column(
          children: [
            Text('SNOW BLOOM RESORT & SPA',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
            // Text('Resorts & Spa ',style: TextStyle(color: Colors.white,fontSize: 30),),
            Text('Discover A new Lifestyle ',style: TextStyle(fontSize: 30,color: Colors.white),),
          ],
        ),left: 100,top:200,)
      ],
    );
  }
}


