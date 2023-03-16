import 'package:alfarha_cargo_app/salary_statement/view/salary_statement_popup.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class SalaryStatement extends StatefulWidget {

  SalaryStatement({Key? key}) : super(key: key);

  @override
  State<SalaryStatement> createState() => _SalaryStatementState();
}

class _SalaryStatementState extends State<SalaryStatement> {
   @override
   void didChangeDependencies() {
    // TODO: implement didChangeDependencies
       
    super.didChangeDependencies();
  }
  //ReceiptController receiptController = Get.put(ReceiptController());

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
      appbarTitle: 'Salary Statement', 
      widget: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: 
                  Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 36,
                        width: 90,
                        color: custom_orange,
                        child:  Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Date",
                           style: GoogleFonts.mulish(
                                color: const Color(0xFFFFFFFF),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Container(
                        height: 36,
                        width: 125,
                        color: custom_orange,
                        child:  Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Month",
                           style: GoogleFonts.mulish(
                                color: const Color(0xFFFFFFFF),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Container(
                        height: 36,
                        width: 125,
                        color: custom_orange,
                        child:  Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Amount",
                            style: GoogleFonts.mulish(
                                color: const Color(0xFFFFFFFF),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Column(
                    children: [
                       ListView.separated(
                        shrinkWrap: true,
                        addRepaintBoundaries:true,
                    itemBuilder: (context, index) {
                      return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 90.w,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 6.w),
                                                child: Text("10-12-2022",
                                                  //"${controller.data[index].date}",
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  style: GoogleFonts.mulish(
                                                    fontSize: 13.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        const Color(0xff626262),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                width: 125.w,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 4.w),
                                                child: Text("September",
                                                  //"${controller.data[index].receiptNo}",
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.mulish(
                                                    fontSize: 13.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        const Color(0xff626262),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              
                                              Container(
                                                width: 135.w,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 6.w),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("OMR 120.00",
                                                      //"₹ ${controller.data[index].recieptAmount}",
                                                      textAlign: TextAlign.left,
                                                      style: GoogleFonts.mulish(
                                                        fontSize: 13.sp,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: custom_green,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    
                                                    CircleAvatar(
                                                      radius: 13,
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFD5E8FF),
                                                      child: InkWell(
                                                         onTap: () => SalaryStatementPopup(context),
                                                        child: CircleAvatar(
                                                          radius: 11,
                                                          backgroundColor:
                                                              Colors.white,
                                                           child: Image.asset(
                                                            "assets/images/eye-icon.png",
                                                            width: 14,
                                                            height: 14,
                                                            color: const Color(
                                                                0xFF59597C),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              )
                                            ]);
                     
                    },
                    itemCount: 5,
                       // controller.data.length,
                    separatorBuilder: ((context, index) => Divider(color: const Color(0xff8A8A8A),
                                            height: 16.h,)),
                  )
                    ]
                  )
                ])
            )
      )
    );
  
  }
}

