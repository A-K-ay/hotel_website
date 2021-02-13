import 'package:flutter/material.dart';
import 'package:hotel_website/constants.dart';
import 'package:url_launcher/url_launcher.dart';
class MMap extends StatelessWidget {
  Future<void> launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8.0),
      child: Container(
        color: Colors.white24,
        child: Stack(
          children: [
            Image.asset('Assets/Images/MapSnow.jpg',height: 120,),
            Positioned(
                right: 20,
                top: 20,
                child: Column(
                  children: [
                    IconButton(
                      iconSize: 20,
                      hoverColor: Colors.black26,
                      color: Colors.blue,
                      onPressed: () {
                        launchInBrowser("https://maps.google.com/maps?gl=IN&hl=en-GB&um=1&ie=UTF-8&fb=1&sa=X&geocode=KUN4NoucYgQ5MUQUva8EnXOj&daddr=Hotel+Lifestyle+Manali,+Hotel+Lifestyle+Manali,+Left+Bank,+Nagar+Road,+Shuru+Rd,+Manali,+Himachal+Pradesh+175131");
                      },
                      icon: Icon(Icons.directions),
                    ),
                    Text("Directions",style: TextStyle(fontSize: 8),)
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
