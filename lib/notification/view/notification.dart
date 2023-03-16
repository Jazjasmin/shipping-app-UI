import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class NotificationScreen extends StatelessWidget {
   NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.context!.height;
    final width = Get.context!.width;
    return ScaffoldScreen(
      backgroundColor: custom_white, 
      appbarTitle: "notification", 
      widget:SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: const Divider(
                                color: Color(0xff8A8A8A),
                              ),
                            );
                          },
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal:  width * 0.03),
                              leading: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors
                                      .primaries[Random()
                                          .nextInt(Colors.primaries.length)]
                                      .shade200,
                                ),
                                width: 48.w,
                                height: 48.h,
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/ic_bell.png",
                                    height: 26.53.h,
                                    width: 24.w,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              title: Text(
                                'New pickup request',
                                style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.sp,
                                  color: const Color(0xff59597C),
                                ),
                              ),
                              subtitle: Text(
                                "01.12.2022, 12.30 PM",
                                style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp,
                                  color: const Color(0xff8A8A8A),
                                ),
                              ),
                              trailing: 
                                   Container(
                                      height: 30.h,
                                      width: 42.w,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffFFF3EB),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                        child: Text(
                                          "New",
                                          style: GoogleFonts.mulish(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xffED7D2B),
                                          ),
                                        ),
                                      ),
                                    )
                                  
                            );
                          },
                        ),
                      ],
                    ),
                  ), 
      );
      
  }
}