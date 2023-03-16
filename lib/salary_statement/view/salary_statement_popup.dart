
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

String? timeFormat;

Future<void> SalaryStatementPopup( BuildContext context
    ) async {
  //final InvoiceController invoiceController = Get.put(InvoiceController());
  //final _nameEditingController = TextEditingController();
  showDialog(
      context: context,
      builder: (ctx) {
              return Center(
                                              child: Dialog(
                                                insetPadding:
                                                    EdgeInsets.symmetric(
                                                  horizontal: 8.w,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.w,
                                                      vertical: 14.h),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Date: 30-12-2022", //${controller.requestDetails.data![0].workrequestDate}",
                                                            style: GoogleFonts.mulish(
                                                                textStyle: const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        13,
                                                                    color: Color(
                                                                        0xff626262))),
                                                          ),
                                                          Text(
                                                            "#RE123456789",//${controller.requestDetails.data![0].workrequestId}",
                                                            style: GoogleFonts.mulish(
                                                                textStyle: const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        13,
                                                                    color: Color(
                                                                        0xff626262))),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(height: 12.h),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 70.w,
                                                            height: 35.h,
                                                            color: custom_blue,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        8.w),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Time",
                                                                  style:
                                                                      GoogleFonts
                                                                          .mulish(
                                                                    fontSize:
                                                                        15.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 110.w,
                                                            height: 35.h,
                                                            color: custom_blue,
                                                            padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            7.w)
                                                                .copyWith(
                                                                    right: 4.w),
                                                            child: Center(
                                                              child: Text(
                                                                "Month",
                                                                style:
                                                                    GoogleFonts
                                                                        .mulish(
                                                                  fontSize:
                                                                      15.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 90.w,
                                                            height: 35.h,
                                                            color: custom_blue,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        7.w),
                                                            child: Center(
                                                              child: Text(
                                                                "Amount",
                                                                style:
                                                                    GoogleFonts
                                                                        .mulish(
                                                                  fontSize:
                                                                      15.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 96.w,
                                                            height: 35.h,
                                                            color: custom_blue,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        7.w),
                                                            child: Center(
                                                              child: Text(
                                                                "Status",
                                                                style:
                                                                    GoogleFonts
                                                                        .mulish(
                                                                  fontSize:
                                                                      15.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 14.h),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 70.w,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        5.w),
                                                            child: Text("12.30",
                                                              // controller
                                                              //     .RequestFormatTime(
                                                              //         "${controller.requestDetails.data![0].workrequestTime}"),
                                                              style: GoogleFonts
                                                                  .mulish(
                                                                fontSize: 13.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: const Color(
                                                                    0xff474747),
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              maxLines: 2,
                                                            ),
                                                          ),
                                                         Container(
                                                              width: 110.w,
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      7.w),
                                                              child: Text("November",
                                                                //"${controller.requestDetails.data![index].category!.isEmpty ? '' : controller.requestDetails.data![index].category![index].categoryName}",
                                                                style:
                                                                    GoogleFonts
                                                                        .mulish(
                                                                  fontSize:
                                                                      13.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: const Color(
                                                                      0xff474747),
                                                                ),
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                            
                                                            
                                                          ),
                                                          Container(
                                                            width: 90.w,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        4.w),
                                                            child: Center(
                                                              child: Text("OMR 20.00",
                                                                //"${controller.requestDetails.data![0].staff}",
                                                                style:
                                                                    GoogleFonts
                                                                        .mulish(
                                                                  fontSize:
                                                                      13.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: custom_green,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 98.w,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        5.w),
                                                            child: Center(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                                  "Credited",
                                                                                  style: GoogleFonts.mulish(
                                                                                    fontSize: 13.sp,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    color: const Color(
                                                                      0xff474747),
                                                                                  ),
                                                                                  textAlign: TextAlign.left,
                                                                                  maxLines: 1,
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                ),
                                                                  Container(
                                                                    height:
                                                                        10.r,
                                                                    width: 10.r,
                                                                    decoration: const BoxDecoration(
                                                                        color:
                                                                            custom_green,
                                                                        shape: BoxShape
                                                                            .circle),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 24.h),
                                                      MaterialButton(
                                                        onPressed: () {
                                                          Get.back();
                                                        },
                                                        color: custom_orange,
                                                        height: 45.h,
                                                        minWidth: 223.w,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        child: Text(
                                                          "Ok",
                                                          style: GoogleFonts
                                                              .roboto(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 18.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
            });
}








