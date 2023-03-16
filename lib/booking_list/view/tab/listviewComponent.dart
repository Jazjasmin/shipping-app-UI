// ignore_for_file: unused_import

import 'package:alfarha_cargo_app/booking_list/view/booking_details.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewComponent extends StatefulWidget {
  const ListViewComponent({super.key});

  @override
  State<ListViewComponent> createState() => _ListViewComponentState();
}

class _ListViewComponentState extends State<ListViewComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BookingListDetails()));
          },
          child: Container(
            color: listviewgrey,
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 12,
                    bottom: 12,
                    left: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //date
                      Container(
                        height: MediaQuery.of(context).size.height / 37,
                        width: MediaQuery.of(context).size.width / 1.75,
                        decoration: BoxDecoration(
                          color: bluecontainer2,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Center(
                          child: Text(
                            "Date: 25.11.2022, Time: 11.22 AM",
                            textAlign: TextAlign.left,
                            style: TextStyle(                          
                                color: white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
        
                      //num
        
                      Text(
                        "OD 235-415-421",
                        style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      //country
        
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset(
                              flag1,
                              height: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "OMAN",
                              style: TextStyle(
                                  color: grey2,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset(
                              flight,
                              height: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "INDIA",
                              style: TextStyle(
                                  color: grey2,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset(
                              flag,
                              height: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                    right: 80,
                    top: 18,
                    child: Container(
                        height: MediaQuery.of(context).size.height / 32,
                        width: MediaQuery.of(context).size.width / 12.5,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "4/8",
                            style: TextStyle(
                                color: white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ))),
                Positioned(
                  right: 30,
                  top: 13,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 23,
                    width: MediaQuery.of(context).size.height / 23,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(3, 3),
                          color: Color.fromARGB(232, 223, 221, 221),
                          blurRadius: 9)
                    ], color: white, borderRadius: BorderRadius.circular(80)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          delete,
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    right: 30,
                    child: Container(
                        height: MediaQuery.of(context).size.height / 32,
                        width: MediaQuery.of(context).size.width / 3.75,
                        decoration: BoxDecoration(
                          color: containerbrown,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Processing",
                              style: TextStyle(
                                  color: textbrown,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 80,
                              width: MediaQuery.of(context).size.height / 80,
                              decoration: BoxDecoration(
                                color: orangefont,
                                borderRadius: BorderRadius.circular(60),
                              ),
                            )
                          ],
                        )))
              ],
            ),
          ),
        )
      ],
    );
  }
}
