import 'package:alfarha_cargo_app/add_box/view/addbox_screen.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonwithIcon extends StatefulWidget {
  const ButtonwithIcon({super.key});

  @override
  State<ButtonwithIcon> createState() => _ButtonwithIconState();
}

class _ButtonwithIconState extends State<ButtonwithIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.width / 3.4,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Center(
                      child: Container(
                        padding: EdgeInsets.only(left:8,right: 8,top: 5),
                      child: Text(
                        "Add More",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.mulish(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: white),
                      ),
                    ),
                  ),
                  Positioned(
                      //left: 0,
                      right: -15,
                      top: 0,
                      bottom: 0,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 25,
                            width: MediaQuery.of(context).size.height / 25,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(80)),
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 26,
                                  width:
                                      MediaQuery.of(context).size.height / 26,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(80)),
                                  child: InkWell(
                                    onTap: (() {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddBoxScreen()));
                                    }),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          add,
                                        ),
                                      ],
                                    ),
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

          //2nd
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 25,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          color: white,
                          border: Border.all(color: primaryColor, width: 1),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left:8,right: 8,top: 5),
                        child: Text(
                          "Edit Address",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.mulish(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: primaryColor),
                        ),
                      ),
                    ),
                    Positioned(
                        //left: 0,
                        right: -15,
                        top: 0,
                        bottom: 0,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 25,
                              width: MediaQuery.of(context).size.height / 25,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(80)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        26.5,
                                    width: MediaQuery.of(context).size.height /
                                        26.5,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(80)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          edit,
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
          )
        ],
      ),
    );
  }
}
