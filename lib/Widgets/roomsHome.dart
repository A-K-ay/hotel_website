import 'package:flutter/material.dart';
import 'package:hotel_website/constants.dart';
class RoomsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(80),
      child: Container(
        child: Column(
          children: [

            RoomCard2(heading: 'Restaurant',img: 'https://drive.google.com/uc?export=view&id=1XIk8kKkchP_hkMv680mTgnQAOMsldlDO',text1: sRestaurant,),
            SizedBox(height: 16,),
            RoomCard(heading: 'Jacuzzi',img: 'https://drive.google.com/uc?export=view&id=1qVexhvUvVyfZPJhHlULPlvQNSoAqgIH_',text1: sJacuzzi,),
            SizedBox(height: 16,),
            RoomCard2(heading: 'Spa',img: 'https://drive.google.com/uc?export=view&id=1vsLhm8mJ7zJGfvVf3Ljw6dnqXVC2OnrO',text1: sSpa,),
            SizedBox(height: 16,),
            RoomCard(heading: 'Gymnasium',img: 'https://drive.google.com/uc?export=view&id=1k6zAQ_b8R8uI4MXC20LLEzHOxJTv4RL0',text1: sGym,),
            SizedBox(height: 16,),
            RoomCard2(heading: 'Rooms',img: 'https://drive.google.com/uc?export=view&id=1OpyovgnKL__6KxxCO6RSiEvC2hobwjdh',text1: sRoom,),
          ],
        ),
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  RoomCard({
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Image.network(img,height: 400,width:650 ,),
          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.all(32.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 16,),
                    Text(heading,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,fontFamily: "Playfair"),),
                    SizedBox(height: 16,),
                    ConstrainedBox(constraints: BoxConstraints(maxWidth: 400),child: Text(text1,style: TextStyle(fontSize: 18,fontFamily: "Playfair"),)),


                  ],
                ),

              ),
            ),
          )
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
      color: Colors.white24,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding:  EdgeInsets.all(32.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 16,),
                    Text(heading,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,fontFamily: "Playfair"),),
                    SizedBox(height: 16,),
                    ConstrainedBox(constraints: BoxConstraints(maxWidth: 400),child: Text(text1,style: TextStyle(fontSize: 18,fontFamily: "Playfair"),)),
                  ],
                ),

              ),
            ),
          ),
          Expanded(
            child: Image.network(img,height: 400,width:650 ,),
          ),
        ],
      ),
    );
  }
}
