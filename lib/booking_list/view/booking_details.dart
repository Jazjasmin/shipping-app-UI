// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, prefer_const_literals_to_create_immutables

import 'package:alfarha_cargo_app/booking_list/view/tab/stepper.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:srv_project/constants/colors.dart';
//import 'package:srv_project/constants/image.dart';
//import 'components/addressview/addresscontainer.dart';

class BookingListDetails extends StatefulWidget {
  const BookingListDetails({super.key});

  @override
  State<BookingListDetails> createState() => _BookingListDetailsState();
}

class _BookingListDetailsState extends State<BookingListDetails> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
      appbarTitle: "Booking Details", 
      widget:SingleChildScrollView( 
        scrollDirection: Axis.vertical,
        child:Column(
        children: [
          Container(
            color: listviewgrey,
            height: MediaQuery.of(context).size.height / 7,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      // top: 12,
                      //bottom: 12,
                      // left: 30,
                      ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(left: 25, right: 15, top: 19),
                        width: MediaQuery.of(context).size.width / 12,
                        height: MediaQuery.of(context).size.height / 23,
                        decoration: BoxDecoration(
                          color: containerclr2,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/f.png",
                              //height: 19,
                              fit: BoxFit.fitHeight,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15, top: 17),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //num

                            Text(
                              "OD 235-415-421",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 9),
                              child: Text(
                                "Document",
                                style: TextStyle(
                                    color: grey2,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
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
                    ],
                  ),
                ),
                Positioned(
                    right: 25,
                    top: 17,
                    child: Container(
                        height: MediaQuery.of(context).size.height / 32,
                        width: MediaQuery.of(context).size.width / 4,
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
                        ))),
                Positioned(
                    right: 25,
                    top: 63,
                    child: Container(
                        height: MediaQuery.of(context).size.height / 32,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                          color: containerbrown,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "48 KG",
                              style: TextStyle(
                                  color: orangefont,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ))),
              ],
            ),
          ),

          ////////address part
          Container(
              padding: EdgeInsets.only(left: 6, top: 2, bottom: 2),
              margin: EdgeInsets.only(left: 25, right: 25),
              width: MediaQuery.of(context).size.width,
              //height: MediaQuery.of(context).size.height / 10,
              decoration: BoxDecoration(
                  color: containerColorblue,
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(width: 1, color: containerBorderColorblue)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //text
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shipper Details",
                            style: GoogleFonts.roboto(
                                color: textColor2,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Srv Infotech",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis),
                              Text(
                                "2nd Street Oman, 9876543210 ",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 12,
          ),
          ////consignee address
          ///
          Container(
              padding: EdgeInsets.only(left: 6, top: 2, bottom: 2),
              margin: EdgeInsets.only(left: 25, right: 25),
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height / 10,
              decoration: BoxDecoration(
                  color: containerColorblue,
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(width: 1, color: containerBorderColorblue)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //text
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Consignee Details",
                            style: GoogleFonts.roboto(
                                color: textColor2,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("John Adam",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis),
                              Text(
                                "Srv Infotech, Down town Building, Thalap,Kannur 670001, 9876012345",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),

          SizedBox(
            height: 12,
          ),
          ////box details
          ///
          Container(
              padding: EdgeInsets.only(left: 6, top: 2, bottom: 2),
              margin: EdgeInsets.only(left: 25, right: 25),
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height / 10,
              decoration: BoxDecoration(
                  color: containerColorblue,
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(width: 1, color: containerBorderColorblue)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //text
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Box Details",
                            style: GoogleFonts.roboto(
                                color: textColor2,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "5 Boxes\n48 kg\nMetal\n",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
             
          TrackOrder()
          
        ],
      ),
      )
    );
  }
}
