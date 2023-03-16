import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Receive extends StatelessWidget {
  const Receive({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
      appbarTitle: 'Receive', 
      widget: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 6.w,
            right: 6.w,
            top: 15.h,
          ),
          child: Column(
                          children: [

                             Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 85.w,
                                    height: 36.h,
                                    color: custom_blue,
                                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Date".tr,
                                          style: GoogleFonts.mulish(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 95.w,
                                    height: 36.h,
                                    color: custom_blue,
                                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "Staff".tr,
                                        style: GoogleFonts.mulish(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80.w,
                                    height: 36.h,
                                    color: custom_blue,
                                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Status".tr,
                                          style: GoogleFonts.mulish(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 85.w,
                                    height: 36.h,
                                    color: custom_blue,
                                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Amount".tr,
                                          style: GoogleFonts.mulish(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            const SizedBox(height: 10,),
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemCount: 5,
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return Divider(
                                  color: const Color(0xff8A8A8A),
                                  height: 16.h,
                                );
                              },
                              itemBuilder:
                                  (BuildContext context, int index) {
                                
                                return Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 85.w,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6.w),
                                      child: Text(
                                        "20.08.2022",
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: GoogleFonts.mulish(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w600,
                                          color:Color(0xff474747)
                                           
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 95.w,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4.w),
                                      child: Text(
                                        "Prabhija",
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        overflow:
                                        TextOverflow.ellipsis,
                                        style: GoogleFonts.mulish(
                                            fontSize: 13.sp,
                                            fontWeight:
                                            FontWeight.w600,
                                            color: Color(0xff474747))
                                      ),
                                    ),
                                    Container(
                                      width: 80.w,
                                      // padding: EdgeInsets.symmetric(
                                      //     horizontal: 4.w),
                                      child: 
                                          Text(
                                            "Success",
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            overflow:
                                            TextOverflow.ellipsis,
                                            style: GoogleFonts.mulish(
                                              fontSize: 13.sp,
                                              fontWeight:
                                              FontWeight.w600,
                                              color:custom_green
                                            ),
                                          ),
                                    ),
                                    Container(
                                      width: 85.w,
                                      // padding: EdgeInsets.symmetric(
                                      //     horizontal: 2.w),
                                      child: Text(
                                        "200.00",
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        overflow:
                                        TextOverflow.ellipsis,
                                        style: GoogleFonts.mulish(
                                            fontSize: 13.sp,
                                            fontWeight:
                                            FontWeight.w600,
                                            color: Color(0xff474747)),
                                      ),
                                    ),                                   
                                          
                                        
                                    
                                  ],
                                );
                              },
                            ),
                            Divider(
                              color: const Color(0xff8A8A8A),
                              height: 16.h,
                            ),
                          ]
        )
      )
      )
    );
  }
}