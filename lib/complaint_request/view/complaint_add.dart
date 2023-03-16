import 'dart:collection';
import 'package:alfarha_cargo_app/complaint_request/view/complaint_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class ComplaintAddScreen extends StatefulWidget {
  int? selectedBoxIndex;
  int? selectedcompIndex;
  ComplaintAddScreen(
      {super.key, this.selectedBoxIndex, this.selectedcompIndex});

  @override
  State<ComplaintAddScreen> createState() => _ComplaintAddScreenState();
}

class _ComplaintAddScreenState extends State<ComplaintAddScreen> {
  void initState() {
    //no need to do anything here now
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
      child:
          //search
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 1.4,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffB8D0D6),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 12.0,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 15.0),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xffB8D0D6),
                        ),
                        // prefixIcon: Image.asset('assets/searchIcon@2x.png'),
                        hintText: "Tracking ID / Mobile / Name",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height / 17,
                      width: MediaQuery.of(context).size.width / 6.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffB8D0D6),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/images/scan.png", height: 20,
                        color: Color(0xffB8D0D6),
                        //fit: BoxFit.fitWidth,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              //color: listviewgrey,
              height: MediaQuery.of(context).size.height / 8,
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
                          margin: EdgeInsets.only(left: 25, right: 15, top: 15),
                          width: MediaQuery.of(context).size.width / 12,
                          height: MediaQuery.of(context).size.height / 14,
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
                              //country
                              SizedBox(
                                height: 5,
                              ),
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
                                      "DUBAI",
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
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 146,
                                height: 19,
                                child: Text(
                                  "Shipped Date: 22.11.2022",
                                  style: GoogleFonts.mulish(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffC1BDBD)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      right: 15,
                      top: 20,
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
            SizedBox(
              height: 5,
            ),
            Text("Select Box",
                style: GoogleFonts.mulish(
                    color: Color(0xff59597C),
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 5,
            ),
            LimitedBox(
              maxHeight: 75,
              maxWidth: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (index) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          widget.selectedBoxIndex = index;
                        });
                      },
                      child: Container(
                        height: 75,
                        width: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: custom_orange),
                            color: widget.selectedBoxIndex == index
                                ? custom_orange
                                : custom_white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text(
                              "Box1",
                              style: GoogleFonts.mulish(
                                  color: widget.selectedBoxIndex == index
                                      ? custom_white
                                      : custom_orange),
                            ),
                            Image.asset("assets/images/complaint_box.png",
                                color: widget.selectedBoxIndex == index
                                    ? custom_white
                                    : custom_orange)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 225.0),
              child: Text("Selected Boxes 2/5",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.mulish(
                      color: Color(0xff59597C),
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Select Complaint",
                style: GoogleFonts.mulish(
                    color: Color(0xff59597C),
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
            LimitedBox(
                maxHeight: 75,
                maxWidth: 70,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                        10,
                        (index) => Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.selectedcompIndex = index;
                                  });
                                },
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0, bottom: 14),
                                        child: Row(
                                          children: [
                                            Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      20,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      4.5,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          widget.selectedcompIndex ==
                                                                  index
                                                              ? custom_orange
                                                              : custom_white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                          color: widget
                                                                      .selectedcompIndex ==
                                                                  index
                                                              ? custom_white
                                                              : custom_orange)),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(9),
                                                  child: Text(
                                                    "Missing",
                                                    style: GoogleFonts.mulish(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            widget.selectedcompIndex ==
                                                                    index
                                                                ? custom_white
                                                                : custom_orange),
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
                                                                  BorderRadius
                                                                      .circular(
                                                                          80)),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                height: 32,
                                                                width: 32,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    border: Border.all(
                                                                        color:
                                                                            custom_orange),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            80)),
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Image.asset(
                                                                      personicn,
                                                                      height:
                                                                          16,
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
                                    ])))))),
            Text(
              "Add Comment".tr,
              style: GoogleFonts.mulish(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: const Color(0xff959FB4),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Comment',
                hintStyle: GoogleFonts.mulish(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 11),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                      BorderSide(width: 1, color: const Color(0xffB8D0D6)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide:
                      BorderSide(width: 1, color: const Color(0xffB8D0D6)),
                ),
                fillColor: const Color(0xffF8FBFF),
                filled: true,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Required';
                } else {
                  return null;
                }
              },
              //controller: controller.comment,
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: const Color(0xff626262),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 11, vertical: 5),
              child: Text(
                "Add Image".tr,
                style: GoogleFonts.mulish(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff959FB4),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // controller.pickImage();
                      },
                      child: Container(
                        width: 84.11,
                        height: 87.09,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: //controller.images!.isNotEmpty
                            //  ClipRRect(
                            //     borderRadius:
                            //         BorderRadius.circular(5),
                            //     child: Image.file(
                            //       //File(controller.images![0].path),
                            //       fit: BoxFit.fill,
                            //     ))
                            SizedBox(
                          height: 91,
                          width: 88,
                          child: Icon(
                            Icons.photo,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      ),
                    ),
                    // Visibility(
                    //   // visible: controller.images!.isNotEmpty,
                    //   child: SizedBox(
                    //     width: 80.11,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.end,
                    //       children: [
                    //         GestureDetector(
                    //           onTap: () {
                    //             // controller.images!
                    //             //     .remove(controller.images![0]);
                    //             // controller.update();
                    //           },
                    //           child: Icon(
                    //             Icons.cancel_outlined,
                    //             color: Colors.red,
                    //             size: 25,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //controller.pickImage();
                      },
                      child: Container(
                        width: 84.11,
                        height: 87.09,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: //controller.images!.length >= 2
                            //     ? ClipRRect(
                            //         borderRadius:
                            //             BorderRadius.circular(5),
                            //         child: Image.file(
                            //           File(controller.images![1].path),
                            //           fit: BoxFit.fill,
                            //         ),
                            //       )
                            SizedBox(
                          height: 91,
                          width: 88,
                          child: Icon(
                            Icons.photo,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      ),
                    ),
                    // Visibility(
                    //   //visible: controller.images!.length >= 2,
                    //   child: SizedBox(
                    //     width: 84.11,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.end,
                    //       children: [
                    //         GestureDetector(
                    //           onTap: () {
                    //             // controller.images!
                    //             //     .remove(controller.images![1]);
                    //             // controller.update();
                    //           },
                    //           child: Icon(
                    //             Icons.cancel_outlined,
                    //             color: Colors.red,
                    //             size: 25,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // controller.pickImage();
                      },
                      child: Container(
                        width: 84.11,
                        height: 87.09,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: //controller.images!.length >= 3
                            // ? ClipRRect(
                            //     borderRadius:
                            //         BorderRadius.circular(5),
                            //     child: Image.file(
                            //       File(controller.images![2].path),
                            //       fit: BoxFit.fill,
                            //     ),
                            //   )
                            SizedBox(
                          height: 91,
                          width: 88,
                          child: Icon(
                            Icons.photo,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      ),
                    ),
                    // Visibility(
                    //   //visible: controller.images!.length >= 3,
                    //   child: SizedBox(
                    //     width: 84.11,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.end,
                    //       children: [
                    //         GestureDetector(
                    //           onTap: () {
                    //             // controller.images!
                    //             //     .remove(controller.images![2]);
                    //             // controller.update();
                    //           },
                    //           child: Icon(
                    //             Icons.cancel_outlined,
                    //             color: Colors.red,
                    //             size: 25,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.of(context).pop();
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          //border: Border.all(color: Color(0xFFFC6303)),
                          color: custom_white),
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width / 2.7,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cancel",
                              style: GoogleFonts.mulish(
                                  color: custom_black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //2nd

                  InkWell(
                    onTap: (() {
                      Navigator.of(context).pop();
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(3, 3),
                                color: Color.fromARGB(255, 223, 221, 221),
                                blurRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: white),
                          color: custom_orange),
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width / 2.7,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Complaint",
                              style: GoogleFonts.mulish(
                                  color: custom_white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
    ));
  }
}
