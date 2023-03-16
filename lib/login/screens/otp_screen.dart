import 'package:alfarha_cargo_app/constant_widgets/colors/colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/company-logo.png',
                    width: 180.w,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'OTP',
                        style: TextStyle(
                            color: darkTextColor,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            fontFamily: GoogleFonts.roboto().fontFamily),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'OTP sent to ',
                            style: TextStyle(
                                color: grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.roboto().fontFamily),
                          ),
                          Text(
                            '9999999999',
                            style: TextStyle(
                                color: grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: GoogleFonts.roboto().fontFamily),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      const PinCodeTextField(
                        pinBoxWidth: 50,
                        pinBoxHeight: 55,
                        pinTextStyle: TextStyle(fontSize: 18.0),
                        pinBoxBorderWidth: 0,
                        hasTextBorderColor: Colors.transparent,
                        defaultBorderColor: Colors.transparent,
                        pinBoxColor: Color(0xFFF1EDF4),
                        pinBoxRadius: 5,
                        pinBoxOuterPadding: EdgeInsets.all(10),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  TextButton(
                    onPressed: () {
                     // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>timeline()));
                      Navigator.of(context)
                          .pushNamed(NavRoute.permissionScreen);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding: EdgeInsets.symmetric(
                            vertical: 13.h, horizontal: 80.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: Text(
                      'Verify',
                      style: TextStyle(
                        color: lightTextColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        fontFamily: GoogleFonts.notoSans().fontFamily,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive OTP?",
                        style: TextStyle(
                          color: darkTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: GoogleFonts.notoSans().fontFamily,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Click here",
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            fontFamily: GoogleFonts.notoSans().fontFamily,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
