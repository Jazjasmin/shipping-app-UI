import 'package:alfarha_cargo_app/wallet/find_transfer/view/all_fund_transfer.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FundTransfer extends StatelessWidget {
  FundTransfer({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: Colors.white,
      appbarTitle: 'Fund Transfer',
      widget: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(top:18.0),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h)
                                .copyWith(bottom: 0.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Sent to",
                              style: GoogleFonts.mulish(
                                fontSize: 13.sp,
                                color: const Color(0xff959FB4),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Container(
                            width: 1.sw,
                            height: 46.h,
                            padding: EdgeInsets.only(
                              left: 11.w,
                              right: 13.w,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: const Color(0xffB8D0D6),
                              ),
                              color: const Color(0xffF8FBFF),
                            ),
                            child: DropdownButton2(
                              icon: const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Color(0xff7EA4AD),
                              ),
                              underline: const SizedBox(),
                              isExpanded: true,
                              // value: value
                              // onChanged: (value) {
                              //   controller.drVal = value.toString();
                              //   controller.update();
                              // },
                              items: []
                              // controller.transferTo.result!
                              //     .map<DropdownMenuItem<String>>((map) {
                              //   return DropdownMenuItem<String>(
                              //     value: map.id,
                              //     child: Text(
                              //       map.accChartName.toString(),
                              //       style: GoogleFonts.mulish(
                              //         fontWeight: FontWeight.w600,
                              //         fontSize: 15.sp,
                              //         color: const Color(0xff626262),
                              //       ),
                              //     ),
                              //   );
                              // }).toList(),
                            ),
                          )),
                      SizedBox(
                        height: 19.h,
                      ),
                      Center(
                        child: SvgPicture.asset(
                          "assets/svg/rupee_vector.svg",
                          height: 156.r,
                          width: 156.r,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Enter Amount",
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: const Color(0xff59597C),
                        ),
                      ),
                      Center(
                        child: IntrinsicWidth(
                          child: TextFormField(
                            //controller: controller.amountController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              // icon: Text(
                              //   "₹",
                              //   style: GoogleFonts.roboto(
                              //     fontSize: 40.sp,
                              //     fontWeight: FontWeight.w400,
                              //     color: const Color(0xff474747),
                              //   ),
                              // ),
                              hintText: "OMR 1500.00",
                              hintStyle: GoogleFonts.roboto(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff474747),
                              ),
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'(^\d*\.?\d{0,2})')),
                            ],
                            style: GoogleFonts.roboto(
                              fontSize: 40.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff474747),
                            ),
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Container(
                          width: 1.sw,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffB8D0D6),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.11.w),
                            child: TextFormField(
                             // controller: controller.commentController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Add Comment",
                                hintStyle: GoogleFonts.mulish(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff7EA4AD),
                                ),
                              ),
                              style: GoogleFonts.mulish(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff626262),
                              ),
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),

                      MaterialButton(
                        onPressed: () async {

                          
                        },
                        height: 45.h,
                        minWidth: 310.w,
                        color: custom_orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child:
                       
                          Text(
                          "Transfer",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 58.h,
                      ),
                      Visibility(
                        // visible: controller.isLoading2 == false &&
                        //     controller.lastFundTransfer.result != null,
                        child: Column(children: [
                          Container(
                            height: 47.h,
                            width: 1.sw,
                            color: const Color(0xffF9F9F9),
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Previous Transactions",
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff3FA54A),
                                    fontSize: 18.sp,
                                  ),
                                ),
                                InkWell(
                                        onTap: () {
                                          Get.to(() =>  AllFundTransfers());
                                        },
                                        child: Text(
                                          "View All",
                                          style: GoogleFonts.mulish(
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xff5E88E5),
                                            fontSize: 13.sp,
                                          ),
                                        ),
                                      ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          ListView.separated(
                                      itemCount: 
                                              5,
                                          
                                      shrinkWrap: true,
                                      physics: const ScrollPhysics(),
                                      separatorBuilder: (context, index) {
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.w),
                                          child: Divider(
                                            height: 36.h,
                                            thickness: 0.3.sp,
                                            color: const Color(0xff8A8A8A),
                                          ),
                                        );
                                      },
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        // var data = controller
                                        //     .lastFundTransfer.result![index];
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    //width: 280,
                                                    child: Text(
                                                      "Sent to Vijith",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: GoogleFonts.mulish(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: const Color(
                                                            0xff59597C),
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
                                                      color:
                                                          const Color(0xff969696),
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
                                                      color:
                                                          const Color(0xff59597C),
                                                      fontSize: 15.sp,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.h,
                                                  ),
                                                  Text(
                                                    'Pending',
                                                    style: GoogleFonts.mulish(
                                                      fontWeight: FontWeight.w600,
                                                      color:
                                                          // data.fundTransferApproveStatus ==
                                                          //         "Pending"
                                                               const Color(
                                                                  0xffED7D2B),
                                                          //     : data.fundTransferApproveStatus ==
                                                          //     "Approved"
                                                          //     ?  const Color(
                                                          //         0xff3FA54A)
                                                          // : const Color(
                                                          //     0xffc70404),
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
                        ]),
                      )
                    ],
                  ),
                ),
              ),
      );
   // ),
  }

  submittedDialog() {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: SizedBox(
        width: 290.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w).copyWith(
            top: 20.h,
            bottom: 15.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 55.r,
                width: 55.r,
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(height: 15.h),
              Text(
                "Fund Transferred",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: custom_green,
                ),
              ),
              // SizedBox(height: 15.h),
              const Divider(
                color: Colors.grey,
              ),
              Text(
                "You have transferred the fund successfully",
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.h),
              MaterialButton(
                onPressed: () {
                  Get.back();
                },
                color: const Color(0xff3FA54A),
                minWidth: 223.w,
                height: 46.h,
                child: Text(
                  "Ok",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                    color: Colors.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  submittedDialog1() {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: SizedBox(
        width: 290.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w).copyWith(
            top: 20.h,
            bottom: 15.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 55.r,
                width: 55.r,
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(height: 15.h),
              Text(
                "Fund Transferred",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: custom_green,
                ),
              ),
              // SizedBox(height: 15.h),
              const Divider(
                color: Colors.grey,
              ),
              Text(
                "Already You have transferred the fund. So, Please wait few minutes.",
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.h),
              MaterialButton(
                onPressed: () {
                  Get.back();
                },
                color: const Color(0xff3FA54A),
                minWidth: 223.w,
                height: 46.h,
                child: Text(
                  "Ok",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                    color: Colors.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
