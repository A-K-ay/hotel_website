import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hotel_website/Animations/fadeInAnimation.dart';
import 'package:hotel_website/Widgets/responsive.dart';
import 'package:hotel_website/constants.dart';

class ImgCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: CarouselSlider(
                  options: CarouselOptions(
                    pauseAutoPlayOnTouch: true,
                    height: 620,
                    // aspectRatio: 16/9,
                    viewportFraction: 1
                    ,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 500),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: cImglinks.map((item) => Container(
                    child: Center(
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.0), BlendMode.darken),
                          child: Image.network(item, fit: BoxFit.fill
                              , width: Responsive.sWidth(context)*.8 ),
                        ),
                    ),
                  )).toList(),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(16),
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(delay:2,child:Text('...',style: TextStyle(fontSize: 28,fontFamily: "Playfair",fontWeight: FontWeight.bold,color: kGoldColor),) ),
                    SizedBox(height: 10,),
                    FadeAnimation(delay:2.1,child: Text(sManali,style: TextStyle(fontSize: 16,fontFamily: "Playfair",color: Colors.black87),)),
                    SizedBox(height: 10,),
                    FadeAnimation(delay:2.2,child:  Text(SourStory1,style: TextStyle(fontSize: 16,fontFamily: "Playfair",color: Colors.black87),),),
                    SizedBox(height: 10,),
                    FadeAnimation(delay: 2.3,child: Text(SourStory2,style: TextStyle(fontSize: 16,fontFamily: "Playfair",color: Colors.black87),)),
                    SizedBox(height: 10,),
                    FadeAnimation(delay: 2.4,child:Text("Why Snow Bloom ?",style: TextStyle(fontFamily: "Pacifico",fontSize: 18,color: kGoldColor,fontWeight: FontWeight.bold),) ,),
                    SizedBox(height: 12,),
                    FadeAnimation(delay: 2.5,child: Text(sWhySnow,style: TextStyle(fontSize: 16,fontFamily: "Playfair",color: Colors.black87),)),
                  ],
                ),
              ),
            ),
          ),
        ),
        // Positioned(child: Column(
        //   children: [
        //     // Text('Resorts & Spa ',style: TextStyle(color: Colors.white,fontSize: 30),),
        //     Text('DISCOVER A NEW FORM OF LUXURY ',style: TextStyle(fontSize: 30,color: Colors.white),),
        //   ],
        // ),left: 50,top:100,)
      ],
    );
  }
}


