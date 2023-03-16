import 'package:alfarha_cargo_app/add_address/view/ad_address.dart';
import 'package:alfarha_cargo_app/add_box/view/addbox_screen.dart';
import 'package:alfarha_cargo_app/booking/view/tabs/cargotype.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

class TabInternational extends StatelessWidget {
  const TabInternational({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(12),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: containerColorblue,
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(width: 1, color: containerBorderColorblue)),
                child: InkWell(
                  onTap: (() {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: CargoType(),
                          );
                        });
                  }),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //cargotype
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cargo type",
                            style: GoogleFonts.mulish(
                                color: Color(0xff626262).withOpacity(.6),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "AIR CARGO",
                            style: GoogleFonts.mulish(
                                color: textColor2,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(flighticon,
                                                //"assets/svg-icons/departure.svg",
                                                //  width: 30,
                                                //  height: 30,
                                                //  color: custom_black,
                                              ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //cash
              Padding(
                padding: EdgeInsets.only(top: 19),
                child: Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 17,
                          width: MediaQuery.of(context).size.width / 3.4,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Container(
                          padding: EdgeInsets.all(14),
                          child: Text(
                            "Cash",
                            style: GoogleFonts.mulish(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: white),
                          ),
                        ),
                        Positioned(
                            //left: 0,
                            right: -18,
                            top: 0,
                            bottom: 0,
                            child: Container(
                              height: 60,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(60)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 53,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(80)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          cash,
                                          height: 30,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),

                    //credit

                    Padding(
                      padding: const EdgeInsets.only(left: 60.0),
                      child: Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 17,
                                width: MediaQuery.of(context).size.width / 3.4,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Container(
                                padding: EdgeInsets.all(14),
                                child: Text(
                                  "Credit",
                                  style: GoogleFonts.mulish(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: white),
                                ),
                              ),
                              Positioned(
                                  //left: 0,
                                  right: -20,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    height: 60,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 54,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(80)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                               SvgPicture.asset(
                                                "assets/svg-icons/credit.svg",
                                                 width: 28,
                                                 height: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),

                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              ////////////////////////select country

              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: containerColorblue,
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(width: 1, color: containerBorderColorblue)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //cargotype
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select Country",
                          style: GoogleFonts.mulish(
                              color: Color(0xff626262).withOpacity(.6),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "India",
                          style: GoogleFonts.mulish(
                              color: textColor2,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            flag,
                            height: 25,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //documnet box
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  height: MediaQuery.of(context).size.height / 17,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: primaryColor),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Document",
                        style: GoogleFonts.mulish(
                            color: primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddBoxScreen())),
                        child: Container(
                          // padding: EdgeInsets.all(9),
                          height: MediaQuery.of(context).size.height / 25,
                          width: MediaQuery.of(context).size.width / 6,
                          decoration: BoxDecoration(
                            color: Color(0xFFFC6303),
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 2),
                                blurRadius: 10.0,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Box",
                              style: GoogleFonts.mulish(
                                  color: white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: containerColorblue,
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(width: 1, color: containerBorderColorblue)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //cargotype
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pickup Option",
                          style: GoogleFonts.mulish(
                              color: Color(0xff626262).withOpacity(.6),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Pickup",
                          style: GoogleFonts.mulish(
                              color: textColor2,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:    Image.asset(
                                                "assets/images/pickup.png",
                                                 width: 30,
                                                 height: 30,
                                                 
                                              ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: InkWell(
                  onTap: (() {
                     Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Addressdetails()));
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Color(0xFFFC6303)),
                        color: Color(0xFFFC6303)),
                    height: MediaQuery.of(context).size.height / 17,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Continue Booking",
                            style: GoogleFonts.mulish(
                                color: white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
