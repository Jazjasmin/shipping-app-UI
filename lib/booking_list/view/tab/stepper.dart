import 'package:alfarha_cargo_app/constant_widgets/colors/colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class TrackOrder extends StatefulWidget {
  TrackOrder({Key? key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  int isActive = 3;
  int? index;
  @override
  Widget build(BuildContext context) {
    int activeStep = 0;
    return Row(children: [
      Container(
        height: MediaQuery.of(context).size.height / 1.8,
        width: MediaQuery.of(context).size.width / 4,
        child: IconStepper(
            direction: Axis.vertical,
            enableNextPreviousButtons: false,
            enableStepTapping: true,
            stepColor: activeStep == 0 ? grey : custom_orange,
            activeStepBorderColor: custom_white,
            activeStepBorderWidth: 0.0,
            activeStepColor: activeStep == 0 ? custom_orange : grey,
            activeStepBorderPadding: 0.0,
            lineColor: activeStep == 0 ? custom_orange : grey,
            lineLength: 70.0,
            lineDotRadius: 1.0,
            stepRadius: 16.0,
            icons: [
              // AssetImage('assets/images/ordered.png',),
              // AssetImage('assets/images/packed.png'),
              // AssetImage('assets/images/shipped.png'),
              // AssetImage('assets/images/delivered.png'),
              Icon(
                Ionicons.cart,
                color: activeStep >= 0 ? custom_white : grey,
              ),
              Icon(
                Ionicons.gift,
                color: activeStep >= 0 ? custom_white : grey,
              ),
              Icon(
                Icons.local_shipping_rounded,
                color: activeStep >= 0 ? custom_white : grey,
              ),
              Icon(
                Icons.delivery_dining,
                color: activeStep >= 0 ? custom_white : grey,
              ),
            ],
            activeStep: activeStep,
            onStepReached: (index) {
              setState(() {
                activeStep = index;
              });
            }),
      ),
      Expanded(
          child: Column(
        children: [
          Row(children: [
            activeStep >= 0
                ? Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Ordered",
                                  style: GoogleFonts.mulish(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                      color: activeStep >= 0
                                          ? Color(0xff59597C)
                                          : Colors.grey[300])),
                              Container(
                                width: 175,
                                height: 21,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: custom_blue,
                                ),
                                child: Center(
                                  child: Text(
                                    "Thursday, 07 November 2022",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                        color: custom_white),
                                  ),
                                ),
                              ),
                            ]),
                        subtitle: SizedBox(
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your order has been placed.",
                                style: GoogleFonts.mulish(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "10th November 2022 10:30",
                                style: GoogleFonts.mulish(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        )))
                : SizedBox()
          ]),
          Row(children: [
            Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                    title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Packed",
                              style: GoogleFonts.mulish(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: activeStep >= 0
                                      ? Color(0xff59597C)
                                      : Colors.grey[300])),
                          Container(
                            width: 175,
                            height: 21,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: custom_blue,
                            ),
                            child: Center(
                              child: Text(
                                "Friday, 08 November 2022",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: custom_white),
                              ),
                            ),
                          ),
                        ]),
                    subtitle: SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your item has benn picked up by courier partner",
                            style: GoogleFonts.mulish(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "11th November 2022 13:30",
                            style: GoogleFonts.mulish(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )))
          ]),
          Row(children: [
            Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                    title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Shipped",
                              style: GoogleFonts.mulish(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: activeStep >= 0
                                      ? Color(0xff59597C)
                                      : Colors.grey[300])),
                          Container(
                            width: 175,
                            height: 21,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: custom_blue,
                            ),
                            child: Center(
                              child: Text(
                                "Monday, 09 December 2022",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: custom_white),
                              ),
                            ),
                          ),
                        ]),
                    subtitle: SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your item has been shipped.",
                            style: GoogleFonts.mulish(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "15th November 2022 18:30",
                            style: GoogleFonts.mulish(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )))
          ]),
          Row(children: [
            Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                    title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery",
                              style: GoogleFonts.mulish(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff2F2F3B).withOpacity(0.4))),
                          Container(
                            width: 175,
                            height: 21,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: custom_blue,
                            ),
                            child: Center(
                              child: Text(
                                "Sunday, 12 December 2022",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: custom_white),
                              ),
                            ),
                          ),
                        ]),
                    subtitle: SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Item yet to be delivered",
                            style: GoogleFonts.mulish(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff2F2F3B).withOpacity(0.4)),
                          ),
                          Text(
                            "20th November 2022 11:30",
                            style: GoogleFonts.mulish(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff2F2F3B).withOpacity(0.4)),
                          ),
                        ],
                      ),
                    )))
          ])
        ],
      ))
    ]);
  }
}
