import 'package:flutter/material.dart';
import 'package:hotel_website/Screens/rooms.dart';
import 'package:hotel_website/constants.dart';
class MOurStoryHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('...',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: kGoldColor),),
            SizedBox(height: 8,),
            Text(sManali,style: TextStyle(fontSize: 10,color: Colors.black87),),
            SizedBox(height: 8,),
            Text(SourStory1,style: TextStyle(fontSize: 10,color: Colors.black87),),
            SizedBox(height: 8,),
            Text(SourStory2,style: TextStyle(fontSize: 10,color: Colors.black87),),
            SizedBox(height: 8,),
            Text("Why Snow Bloom ?",style: TextStyle(fontSize: 10,color: Colors.black87,fontWeight: FontWeight.bold),),
            SizedBox(height: 8,),
            Text(sWhySnow,style: TextStyle(fontSize: 10,color: Colors.black87),),
            SizedBox(height: 8,),
            Text(SourStory3,style: TextStyle(fontSize: 10,color: Colors.black87),),
            SizedBox(height: 8,),
            Text(SourStory4,style: TextStyle(fontSize: 10,color: Colors.black87),),
            SizedBox(height: 8,),

            FlatButton( onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Rooms()));
            },color: kGoldColor,hoverColor: Colors.yellow,child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("VIEW ROOMS",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
            ),),
          ],
        ),
      ),
    );
  }
}
