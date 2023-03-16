import 'package:alfarha_cargo_app/booking/view/booking.dart';
import 'package:alfarha_cargo_app/booking_list/view/booking_details.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/routes.dart';
import 'package:alfarha_cargo_app/custome_widget/dashed_separator.dart';
import 'package:alfarha_cargo_app/dashboard/view/custome_widgets/delivery_stage_icon.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                color: primaryColor,
                child: Image.asset(
                  'assets/images/dashboard-bg.png',
                  height: 400.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 125.h,
                  left: 18.w,
                  right: 18.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Adil Salam',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: lightTextColor),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Greetings from Al-Farha Cargo',
                      style: TextStyle(
                          fontSize: 16.h,
                          fontWeight: FontWeight.w600,
                          color: lightTextColor),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 13.h),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: lightTextColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              blurRadius: 15,
                              offset: Offset(0, 0),
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recent Booking",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                              color: secondaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "AWB: 9876543210",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: Color(0xFFA0A0A0),
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/weight.png',
                                    width: 17.w,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    "36 Kg",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: Color(0xFFA0A0A0),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/icons/ind-flag.png',
                                height: 20.h,
                              ),
                              Text(
                                "IND",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 59, child: DashedSeparator()),
                              Image.asset(
                                'assets/icons/flight.png',
                                height: 20.h,
                              ),
                              SizedBox(width: 59, child: DashedSeparator()),
                              Text(
                                "OMN",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              Image.asset(
                                'assets/icons/omn-flag.png',
                                height: 20.h,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DeliveryStageIcon(
                                bgColor: primaryColor,
                                iconPath: 'assets/icons/packed.png',
                                width: 14,
                              ),
                              SizedBox(width: 32.w, child: DashedSeparator()),
                              DeliveryStageIcon(
                                bgColor: primaryColor,
                                iconPath: 'assets/icons/shipped.png',
                                width: 20,
                              ),
                              SizedBox(width: 32.w, child: DashedSeparator()),
                              DeliveryStageIcon(
                                bgColor: primaryColor,
                                iconPath: 'assets/icons/verification.png',
                                width: 15,
                              ),
                              SizedBox(width: 32.w, child: DashedSeparator()),
                              DeliveryStageIcon(
                                bgColor: primaryColor,
                                iconPath: 'assets/icons/out-for-delivery.png',
                                width: 20,
                              ),
                              SizedBox(width: 32.w, child: DashedSeparator()),
                              DeliveryStageIcon(
                                bgColor: Color(0xFFD9D9D9),
                                iconPath: 'assets/icons/delivered.png',
                                width: 18,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: 4,
                                    backgroundColor: primaryColor,
                                  ),
                                  SizedBox(
                                    width: 7.w,
                                  ),
                                  Text(
                                    "Out for Delivery",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.w,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 4.h, horizontal: 8.w),
                                decoration: BoxDecoration(
                                    color: Color(0xFF46A3E7),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Text(
                                  'November 28, 2022, 08:35 AM',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: lightTextColor),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 13.h,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 27.w),
            decoration:
                BoxDecoration(color: lightTextColor, boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.07),
                blurRadius: 35,
                offset: Offset(0, 6),
              )
            ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Balance",
                      style: GoogleFonts.overpass(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: secondaryColor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 4.h, horizontal: 8.w),
                      decoration: BoxDecoration(
                          color: Color(0xFF46A3E7),
                          borderRadius: BorderRadius.circular(3)),
                      child: Text(
                        'My Wallet OMR 1500.00',
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                          color: lightTextColor,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                         Get.to(() => BookingScreen1());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/icons/new-booking.png',
                            height: 60.h,
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            "New Booking",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(NavRoute.orders);
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/icons/my-booking.png',
                            height: 60.h,
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            "My Booking",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                         Get.to(() => BookingListDetails());
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/icons/track.png',
                            height: 60.h,
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            "Track",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.h, bottom: 13.h),
            child: CarouselSlider(
                items: [
                  Container(
                    width: 280.w,
                    height: 110.h,
                    // margin: EdgeInsets.only(right: 5.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/images/test-offer-image.png'))),
                  ),
                  Container(
                    width: 280.w,
                    height: 110.h,
                    // margin: EdgeInsets.only(right: 5.w),
                    // margin: EdgeInsets.only(top: 5.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/images/test-offer-image.png'))),
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  height: 110.h,
                  // enableInfiniteScroll: false,
                )),
          ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Padding(
          //     padding: EdgeInsets.only(
          //         top: 20.h, bottom: 20.h, left: 15.w, right: 10.w),
          //     child: Row(
          //       children: [
          //         Container(
          //           width: 280.w,
          //           height: 110.h,
          //           margin: EdgeInsets.only(right: 5.w),
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.all(Radius.circular(10)),
          //               image: DecorationImage(
          //                   fit: BoxFit.cover,
          //                   image: AssetImage(
          //                       'assets/images/test-offer-image.png'))),
          //         ),
          //         Container(
          //           width: 280.w,
          //           height: 110.h,
          //           margin: EdgeInsets.only(right: 5.w),
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.all(Radius.circular(10)),
          //               image: DecorationImage(
          //                   fit: BoxFit.cover,
          //                   image: AssetImage(
          //                       'assets/images/test-offer-image.png'))),
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}