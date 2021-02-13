import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_website/constants.dart';
class Facilities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery. of(context). size. width;
    double sHight = MediaQuery. of(context). size. height;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Text('EPERIENCE A GOOD STAY, ENJOY FANTASTIC OFFERS',style: TextStyle(fontSize: 40),),
          SizedBox(width: sWidth*.5 ,height: 1.5),
          Text('fIND OUR EXOTIC ROOMS WITH GREAT AMBIENCE',style: TextStyle(fontSize: 25,color: Colors.yellow),),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Choice(),
                Choice(),
                Choice(),
                Choice(),

              ],
            ),
          )


        ],
      ),
    );
  }
}

class Choice extends StatelessWidget {
  const Choice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:1.0),
      child: Container(
        height: 200,
        width: 300,
        color: kSecondaryColor,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.king_bed,size: 90,),
            SizedBox(width: 120 ,height: 4,child: Container(color: Colors.yellow,),),
            Text('LUXURY COTTAGE ROOMS',style: TextStyle(fontSize: 20),),
          ],
        ) ,
      ),
    );
  }
}

