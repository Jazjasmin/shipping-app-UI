import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AllFundTransfers extends StatelessWidget {
   AllFundTransfers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
      appbarTitle: 'All Transactions', 
      widget: 
      SafeArea(
        child: SingleChildScrollView(
                      //controller: controller.scrollController,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            child: ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 10,
                              separatorBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 25.w),
                                  child: Divider(
                                    height: 36.h,
                                    thickness: 0.3.sp,
                                    color: const Color(0xff8A8A8A),
                                  ),
                                );
                              },
                              itemBuilder: (BuildContext context, int index) {
                                //var data = controller.searchData[index];
                                return Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 25.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                           // width: 300.w,
                                            child: Text(
                                              "Sent to Amit",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.mulish(
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xff59597C),
                                                fontSize: 15.sp,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Text(
                                            '18.10.2022, 11:30 AM',
                                            style: GoogleFonts.mulish(
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xff969696),
                                              fontSize: 13.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "OMR 200.00",
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff59597C),
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3.h,
                                          ),
                                          Text(
                                           "pending",
                                            style: GoogleFonts.mulish(
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xffED7D2B),
                                                  // data.fundTransferApproveStatus ==
                                                  //         "Pending" ? const Color(0xffED7D2B)
                                                  //     : data.fundTransferApproveStatus ==
                                                  //     "Rejected" ? const Color(
                                                  //     0xffde0606)
                                                  //     :const Color(0xff3FA54A),
                                              fontSize: 13.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          
                        ],
                      ),
                    ),
        ),
    
    );
  }
}
