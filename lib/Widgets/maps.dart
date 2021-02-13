import 'package:flutter/material.dart';
import 'package:hotel_website/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Map extends StatelessWidget {
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
      padding: const EdgeInsets.only(left: 80.0, right: 80),
      child: Container(
        color: Colors.white24,
        child: Row(
          children: [
            Stack(
              children: [
                Image.asset(
                  'Assets/Images/MapSnow.jpg',
                  height: 350,
                ),
                Positioned(
                    right: 20,
                    top: 20,
                    child: Column(
                      children: [
                        IconButton(
                          iconSize: 40,
                          hoverColor: Colors.black26,
                          color: Colors.blue,
                          onPressed: () {
                            launchInBrowser("https://maps.google.com/maps?gl=IN&hl=en-GB&um=1&ie=UTF-8&fb=1&sa=X&geocode=KUN4NoucYgQ5MUQUva8EnXOj&daddr=Hotel+Lifestyle+Manali,+Hotel+Lifestyle+Manali,+Left+Bank,+Nagar+Road,+Shuru+Rd,+Manali,+Himachal+Pradesh+175131");
                          },
                          icon: Icon(Icons.directions),
                        ),
                        Text("Directions")
                      ],
                    )),

              ],
            ),
            SizedBox(
              width: 80,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ADDRESS',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kGoldColor),
                ),
                SizedBox(
                  height: 16,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    'Snow Bloom Resort & Spa Manali, Left Bank, Nagar Road, Shuru Rd, Manali, Himachal Pradesh 175131',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: kGoldColor),
                          ),
                          Text(
                            '9816047324',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kGoldColor),
                        ),
                        Text(
                          'SnowBloomResort@gmail.com',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
