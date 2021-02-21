import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:hotel_website/constants.dart';
class MAmenitiesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Amenities',style: TextStyle(fontSize: 24,fontFamily: "Playfair",color: Colors.black87),),
          SizedBox(height: 16,),
          Wrap(
            children: [
              AmenitiesCard(text: 'Free Wifi',icon: Icons.wifi_outlined,),
              AmenitiesCard(text: 'Restaurant On-Site',icon: MdiIcons.foodForkDrink),
              AmenitiesCard(text: 'Room Service',icon: MdiIcons.roomServiceOutline,),
              AmenitiesCard(text: 'Fitness Center',icon: MdiIcons.weightLifter,),
            ],
          ),
          Wrap(
            children: [
              AmenitiesCard(text: 'Organised Check-in',icon: MdiIcons.calendarCheckOutline,),
              AmenitiesCard(text: 'Laundry',icon: MdiIcons.washingMachine,),
              AmenitiesCard(text: 'Spa',icon: MdiIcons.spaOutline,),
            ],

          ), Wrap(
            children: [
              AmenitiesCard(text: 'Conference Room',icon: MdiIcons.accountGroupOutline,),
              AmenitiesCard(text: 'Lift',icon: MdiIcons.arrowUpBoldBoxOutline,),
            ],

          ),
        ],
      ),
    );
  }
}

class AmenitiesCard extends StatelessWidget {
  AmenitiesCard({@required this.text,@required this.icon
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(icon,size: 24,color: kCoolBlack,),
          Text(text,style: TextStyle(fontSize: 10,color: Colors.black,fontFamily: "Playfair"),),
        ],
      ),
    );
  }
}
