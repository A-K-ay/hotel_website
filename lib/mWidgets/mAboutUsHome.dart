import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_website/constants.dart';
class MAboutUSHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLogoBgColor,
      child: Padding(
        padding: const EdgeInsets.only(left:40.0,right: 40,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network('https://drive.google.com/uc?export=view&id=1A47unG6XPSriUnqhv6-ZhX5ZJ328e0OY',height: 150,width: 150,),
            SizedBox(height: 2,width: 300,child: Container(color: kCoolBlack,),),
            SizedBox(height: 24,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('ADDRESS',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: kGoldColor,fontFamily: "Playfair"),),
                SizedBox(height: 12,),
                ConstrainedBox(constraints:BoxConstraints(maxWidth: 200),child: Text('Snow Bloom Resort & Spa Manali, Left Bank, Nagar Road, Shuru Rd, Manali, Himachal Pradesh 175131',style: TextStyle(fontSize: 12,fontFamily: "Playfair",color: kGoldColor.withOpacity(.6)),)),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phone',style: TextStyle(fontSize: 12,fontFamily: "Playfair",fontWeight: FontWeight.bold,color: kGoldColor),),
                        Text('9816047324',style: TextStyle(fontSize: 12,fontFamily: "Playfair",color: kGoldColor.withOpacity(.6)),),

                      ],
                    ),
                    SizedBox(width: 32),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email',style: TextStyle(fontSize: 12,fontFamily: "Playfair",fontWeight: FontWeight.bold,color: kGoldColor),),
                        Text('SnowBloomResort@gmail.com',style: TextStyle(fontSize: 12,fontFamily: "Playfair",color: kGoldColor.withOpacity(.6),),)
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 24,),
          ],
        ),
      ),
    );
  }
}
