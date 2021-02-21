import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_website/Screens/keyPress.dart';
import 'package:hotel_website/Widgets/aboutUsHome.dart';
import 'package:hotel_website/Widgets/responsive.dart';
import 'package:hotel_website/Widgets/topNavBar.dart';
import 'package:hotel_website/mWidgets/mTariff.dart';
class Tariff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive.isMobile(context)?MTariff() :KeyPress(
        drag: 3.1,
        child: Column(
          children: [
            TopNavBar(),
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: Center(
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
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('TARIFF 3 NIGHTS 4 DAYS',style: TextStyle(fontSize: !Responsive.isMobile(context)?24 :10,fontFamily: "Playfair"),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('Low Season Period: 5th Jan - 14th April, 15th July - 20 Dec.',style: TextStyle(fontSize: !Responsive.isMobile(context)?16 :11,fontFamily: "Playfair"),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('High Season Period: 15th April - 14th July, 21th Dec -4 Jan, Special Holidays & long Weekends',style: TextStyle(fontSize: !Responsive.isMobile(context)?16 :10,fontFamily: "Playfair"),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('Low Season.',style: TextStyle(fontSize: !Responsive.isMobile(context)?24 :11,fontFamily: "Playfair"),),
                          ),
                          DataTable(
                            columns: const <DataColumn>[
                              DataColumn(
                                label: Text(
                                  'Category',
                                  style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Playfair"),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'CPAI',
                                  style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Playfair"),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'MAPI',
                                  style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Playfair"),
                                ),
                              ),
                            ],
                            rows: const <DataRow>[
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Classic Room')),
                                  DataCell(Text('10500')),
                                  DataCell(Text('12000')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Premium Room')),
                                  DataCell(Text('12000')),
                                  DataCell(Text('13500')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Family Suite (4 pax)')),
                                  DataCell(Text('18000')),
                                  DataCell(Text('23000 ')),
                                ],
                              ), DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Extra Child (6-12 yrs)')),
                                  DataCell(Text('2100')),
                                  DataCell(Text('3000 ')),
                                ],
                              ),DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Extra Person')),
                                  DataCell(Text('3000')),
                                  DataCell(Text('4500')),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('High Season.',style: TextStyle(fontSize: !Responsive.isMobile(context)?24 :11,fontFamily: "Playfair"),),
                          ),
                          DataTable(
                            columns: const <DataColumn>[
                              DataColumn(
                                label: Text(
                                  'Category',
                                  style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Playfair"),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'CPAI',
                                  style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Playfair"),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'MAPI',
                                  style: TextStyle(fontStyle: FontStyle.italic,fontFamily: "Playfair"),
                                ),
                              ),
                            ],
                            rows: const <DataRow>[
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Classic Room')),
                                  DataCell(Text('13500')),
                                  DataCell(Text('16000')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Premium Room')),
                                  DataCell(Text('15000')),
                                  DataCell(Text('17000')),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Family Suite (4 pax)')),
                                  DataCell(Text('24000')),
                                  DataCell(Text('28500 ')),
                                ],
                              ), DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Extra Child (6-12 yrs)')),
                                  DataCell(Text('2100')),
                                  DataCell(Text('3000 ')),
                                ],
                              ),DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('Extra Person')),
                                  DataCell(Text('3000')),
                                  DataCell(Text('4500')),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 32,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:40.0),
                            child: Text("Package Inclusions",style: TextStyle(fontSize: 24,fontFamily: "Playfair"),
                            ),
                          ),
                          SizedBox(height: 16,),
                          Textbox(text: "Accommodation In Well Appointed Rooms",),
                          Textbox(text: "Continental Plan Includes Breakfast ",),
                          Textbox(text: "Modified American Plan Includes Breakfast & Dinner",),
                          Textbox(text: "Tea/Coffee Makers With Daily Single Replenishment",),
                          Textbox(text: "2 Bottles Of Mineral Water Daily",),
                          Textbox(text: "Child Below 5 Years Is Complimentary",),
                          Textbox(text: "Free Parking",),
                          Textbox(text: "High Speed Wireless Internet",),
                          Textbox(text: "Taxes Included",),
                          SizedBox(height: 32,),
                          Padding(
                            padding: const EdgeInsets.only(left:40.0),
                            child: Text("Terms & Conditions",style: TextStyle(fontSize: 24,fontFamily: "Playfair"),
                            ),
                          ),
                          SizedBox(height: 16,),
                          Textbox(text: "All bookings are confirmed against Advance Payment.",),
                          Textbox(text: "Guests are advised to carry an identify proof at the time of check in.",),
                          Textbox(text: "Guests are advised to keep Age Proof of children who are below 5 years as hotel may ask for the same, if child seems to be older. If Guest is unable to produce the proof then hotel has right to charge for meals for the child. ",),
                          Textbox(text: "Tea/Coffee Makers With Daily Single Replenishment",),
                          Textbox(text: "Early check in and Late checkout is subject to availability.",),
                          Textbox(text: "In the rare case that due to unforeseen circumstances we cannot deliver your requested accommodation, you will be offered alternate accommodation or a full refund.",),
                          SizedBox(height: 32,),
                          Padding(
                            padding: const EdgeInsets.only(left:40.0),
                            child: Text("Cancellation Policy",style: TextStyle(fontSize: 24,fontFamily: "Playfair"),
                            ),
                          ),
                          SizedBox(height: 16,),
                          Textbox(text: "100% cancellation fee if cancelled within 15 days of Check in.",),
                          Textbox(text: "In case of premature departure, 80% of package cost for Days not availed shall be forfeited.",),
                          Textbox(text: "PLEASE NOTE THAT TARIFFS AND PACKAGES AND TAXES ARE SUBJECT TO CHANGE WITHOUT NOTICE.",),
                          SizedBox(height: 16,),
                        ],
                      ),



                    ],
                  ) ,
                ),
              ),
            ),
            AboutUSHome()
          ],
        ),
      ),
    );
  }
}

class Textbox extends StatelessWidget {
  final String text;

  const Textbox({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:20.0,left:40,top:4,bottom: 4),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 600),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_forward_ios),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500),
              child: Text(text,style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
