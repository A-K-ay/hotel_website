import 'package:flutter/material.dart';
import 'package:hotel_website/constants.dart';
class MRoomsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8),
      child: Container(
        child: Column(
          children: [
            RoomCard(heading: 'Jacuzzi',img: 'https://drive.google.com/uc?export=view&id=1qVexhvUvVyfZPJhHlULPlvQNSoAqgIH_',text1: sMJacuzzi,),
            SizedBox(height: 16,),
            RoomCard2(heading: 'Restaurant',img: 'https://drive.google.com/uc?export=view&id=1XIk8kKkchP_hkMv680mTgnQAOMsldlDO',text1: sMRestaurant,),
            SizedBox(height: 16,),
            RoomCard(heading: 'Room',img: 'https://drive.google.com/uc?export=view&id=1OpyovgnKL__6KxxCO6RSiEvC2hobwjdh',text1: sMRoom,),
            SizedBox(height: 16,),
            RoomCard2(heading: 'Gymnasium',img: 'https://drive.google.com/uc?export=view&id=1k6zAQ_b8R8uI4MXC20LLEzHOxJTv4RL0',text1: sMGym,),
            SizedBox(height: 16,),
            RoomCard(heading: 'Spa',img: 'https://drive.google.com/uc?export=view&id=1vsLhm8mJ7zJGfvVf3Ljw6dnqXVC2OnrO',text1: sMSpa,),


          ],
        ),
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  RoomCard({
   @required this.img,this.text1,this.heading,
  });
  final String  img;
  final String text1;
  final String  heading;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: kLightBlack ,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 8,),
          Expanded(
            child: Image.network(img,height: 130,width:180 ,),
          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 2,),
                    Text(heading,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Playfair"),),
                    SizedBox(height: 8,),
                    Text(text1,style: TextStyle(fontSize: 10,fontFamily: "Playfair"),),
                  ],
                ),

              ),
            ),
          ),

        ],
      ),
    );
  }
}
class RoomCard2 extends StatelessWidget {
  RoomCard2({
    @required this.img,this.text1,this.text2,this.text3,this.heading,
  });
  final String  img;
  final String text1;
  final String  text2;
  final String  text3;
  final String  heading;

  @override
  Widget build(BuildContext context) {
    return Container(
     color: kLightBlack ,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 2,),
                    Text(heading,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Playfair"),),
                    SizedBox(height: 8,),
                    Text(text1,style: TextStyle(fontSize: 10,fontFamily: "Playfair",),),]
                ),

              ),
            ),
          ),
          Expanded(
            child: Image.network(img,height: 130,width:180 ,),

          ),
          SizedBox(width: 8,),
        ],
      ),
    );
  }
}
