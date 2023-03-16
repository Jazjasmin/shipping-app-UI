import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:srv_project/constants/colors.dart';
//import 'package:srv_project/constants/image.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
    appbarTitle: "My Order", 
    widget:  Padding(
        padding:
            const EdgeInsets.only(bottom: 22, top: 22, left: 22, right: 22),
        child: 
            //search
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 22),
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              icn,
                              height: 20,
                            ),
                          ],
                        ),
                        filled: true,
                        fillColor: containerColorblue,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                width: 1, color: containerBorderColorblue)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                width: 1, color: containerBorderColorblue)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                width: 1, color: containerBorderColorblue)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                width: 1, color: containerBorderColorblue)),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            color: searchfont,
                            fontSize: 13,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder:(context, index) {
                  return Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                //height: MediaQuery.of(context).size.height / 8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //icon
            
                            Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.all(25),
                              width: 37,
                              height: 37,
                              decoration: BoxDecoration(
                                color: containerclr2,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/f.png",
                                    height: 19,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ),
                            ),
            
                            //description
            
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "OD 123-456-210",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: menufontcolor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "OMR - to - IND",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: grey2),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "11.11.2022 01:31 PM",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: grey3),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Vijith KP",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: grey2),
                                ),
                              ],
                            ),
                          ],
                        ),
            
                        //weight
                        Positioned(
                          right: 19,
                          top: 10,
                          child: Container(
                              width: MediaQuery.of(context).size.width / 7,
                              height: MediaQuery.of(context).size.height / 29,
                              decoration: BoxDecoration(
                                color: containerclr1,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  "48 KG",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: orangefont),
                                ),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    //////chips
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 14),
                          child: Row(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    width:
                                        MediaQuery.of(context).size.width / 4.5,
                                    decoration: BoxDecoration(
                                        color: chipclr1,
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(9),
                                    child: Text(
                                      "Details",
                                      style: GoogleFonts.mulish(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: textColor2),
                                    ),
                                  ),
                                  Positioned(
                                      //left: 0,
                                      right: -14,
                                      top: 0,
                                      bottom: 0,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                color: chipclr1,
                                                borderRadius:
                                                    BorderRadius.circular(80)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 32,
                                                  width: 32,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              80)),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      Image.asset(
                                                        personicn,
                                                        height: 16,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
            
                        //2nd chip
            
                        Padding(
                          padding: const EdgeInsets.only(left: 19, bottom: 14),
                          child: Row(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    width:
                                        MediaQuery.of(context).size.width / 4.5,
                                    decoration: BoxDecoration(
                                        color: chipclr1,
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(9),
                                    child: Text(
                                      "Process",
                                      style: GoogleFonts.mulish(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: textColor2),
                                    ),
                                  ),
                                  Positioned(
                                      //left: 0,
                                      right: -14,
                                      top: 0,
                                      bottom: 0,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                color: chipclr1,
                                                borderRadius:
                                                    BorderRadius.circular(80)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 32,
                                                  width: 32,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              80)),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      Image.asset(
                                                        boxicn,
                                                        height: 12,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
            
                        //3rd
            
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 19, right: 19, bottom: 14),
                          child: Row(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    width:
                                        MediaQuery.of(context).size.width / 4.5,
                                    decoration: BoxDecoration(
                                        color: chipclr1,
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(9),
                                    child: Text(
                                      "Deliver",
                                      style: GoogleFonts.mulish(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: textColor2),
                                    ),
                                  ),
                                  Positioned(
                                      //left: 0,
                                      right: -14,
                                      top: 0,
                                      bottom: 0,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                color: chipclr1,
                                                borderRadius:
                                                    BorderRadius.circular(80)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 32,
                                                  width: 32,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              80)),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      Image.asset(
                                                        delivericn,
                                                        height: 21,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
                
              },),
            )

            //items
            
            ///////////////////////////////////////////
            ///
            ///
            //items
           
          ],
        ),
      ),
    );
  }
}
