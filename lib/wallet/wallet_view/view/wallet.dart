import 'package:alfarha_cargo_app/salary_statement/view/salary_statement_view.dart';
import 'package:alfarha_cargo_app/wallet/expense/view/expense.dart';
import 'package:alfarha_cargo_app/wallet/find_transfer/view/fund_transfer.dart';
import 'package:alfarha_cargo_app/wallet/receive/view/receive.dart';
import 'package:alfarha_cargo_app/wallet/transactions/view/statement.dart';
import 'package:alfarha_cargo_app/wallet/wallet_view/view/all_transaction.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
        backgroundColor: custom_white,
        appbarTitle: 'Wallet',
        widget: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 10,
            ).copyWith(bottom: 0.h),
            child: Container(
              width: 1.sw,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/wallet_bg.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 19.w,
                vertical: 23.w,
              ).copyWith(top: 0.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 68.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Balance",
                            style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                           SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            '1500.00',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontSize: 45.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            height: 40.h,
            width: 1.sw,
            color: const Color(0xffF9F9F9),
            padding:  EdgeInsets.only(left: 25.w),
            child: Row(
              children: [
                Text(
                  "Today's Collection",
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff59597C),
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ),
         SizedBox(
            height: 17.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cash",
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff474747),
                    fontSize: 15.sp,
                  ),
                ),
                Text(
                  "OMR 100",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff474747),
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ),
         SizedBox(
            height: 17.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Google Pay",
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff474747),
                    fontSize: 15.sp,
                  ),
                ),
                Text(
                  "OMR 50",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff474747),
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ),
         SizedBox(
            height: 17.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Paytm",
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff474747),
                    fontSize: 15.sp,
                  ),
                ),
                Text(
                  "OMR 750",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff474747),
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ),
        
         SizedBox(
            height: 25.h,
          ),
           Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => FundTransfer());
                           // Get.to(() => SalaryStatement());
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 80.r,
                                width: 80.r,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffEBF3FA),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/fund.svg",
                                    height: 33.25.h,
                                    width: 42.81.w,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
                                "Transfer",
                                style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff59597C),
                                  fontSize: 13.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => Statement());
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 80.r,
                                width: 80.r,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffE3F8DE)),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/transaction.svg",
                                    height: 38.24.h,
                                    width: 29.14.w,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
                                "Transaction",
                                style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff59597C),
                                  fontSize: 13.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                           Get.to(() => Expense());
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 80.r,
                                width: 80.r,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffF8ECFF)),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/expense.svg",
                                    height: 37.87.h,
                                    width: 30.29.w,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
                                "Expense",
                                style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff59597C),
                                  fontSize: 13.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => Receive());//!.then((value) => controller.update(controller.apiFetchWallet()));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 80.r,
                                width: 80.r,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffFFECE4)),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/receive_icon.svg",
                                    height: 37.87.h,
                                    width: 30.29.w,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              Text(
                                "Receive",
                                style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff59597C),
                                  fontSize: 13.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          SizedBox(
            height: 34.h,
          ),
          Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40.h,
                            width: 1.sw,
                            color: const Color(0xffF9F9F9),
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Last Transactions",
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff3FA54A),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                 
                                    Get.to(() => AllTransactions());
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
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        ListView.separated(
                          itemCount: 5,
                          // controller.wallet!.lastTransaction!.length > 5
                          //     ? 5
                          //     : controller
                          //     .wallet!.lastTransaction!.length,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Divider(
                                height: 36.h,
                                thickness: 0.3.sp,
                                color: const Color(0xff8A8A8A),
                              ),
                            );
                          },
                          itemBuilder: (BuildContext context, int index) {
                            
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        //width: 300.w,
                                        child: Text(
                                          'New booking to India ',
                                        // overflow: TextOverflow.ellipsis,
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
                                        // tran.transactionLogType.toString() ==
                                        //     "1"
                                             "Debit",
                                            //: "Credit",
                                        style: GoogleFonts.mulish(
                                          fontWeight: FontWeight.w600,
                                          color: 
                                          // tran.transactionLogType.toString() ==
                                          //     "1"
                                               const Color(0xffED7D2B),
                                              //: const Color(0xff3FA54A),
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
                        ],
                    ),
        ])));
  }
}
