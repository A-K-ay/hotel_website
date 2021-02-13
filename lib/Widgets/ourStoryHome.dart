import 'package:flutter/material.dart';
import 'package:hotel_website/Screens/rooms.dart';
import 'package:hotel_website/constants.dart';
class OurStoryHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('...',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: kGoldColor),),
                  SizedBox(height: 16,),
                  Text(sManali,style: TextStyle(fontSize: 16,color: Colors.black87),),
                  SizedBox(height: 16,),
                  Text(SourStory1,style: TextStyle(fontSize: 16,color: Colors.black87),),
                  SizedBox(height: 16,),
                  Text(SourStory2,style: TextStyle(fontSize: 16,color: Colors.black87),),
                  SizedBox(height: 16,),
                  Text("Why Snow Bloom ?",style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.bold),),
                  SizedBox(height: 16,),
                  Text(sWhySnow,style: TextStyle(fontSize: 16,color: Colors.black87),),
                  SizedBox(height: 16,),
                  Text(SourStory3,style: TextStyle(fontSize: 16,color: Colors.black87),),
                  SizedBox(height: 16,),
                  Text(SourStory4,style: TextStyle(fontSize: 16,color: Colors.black87),),
                  SizedBox(height: 16,),
                  FlatButton( onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Rooms()));
                  },color: kGoldColor,hoverColor: Colors.yellow,child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("View Rooms",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),),
                ],
              ),
            ),
            SizedBox(width: 32,),
            Expanded(child: Image.asset('Assets/Images/snow.jpg',height: 350,width: 350,),)
          ],
        ),
      ),
    );
  }
}
