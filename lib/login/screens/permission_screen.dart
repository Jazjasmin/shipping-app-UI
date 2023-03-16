import 'package:alfarha_cargo_app/constant_widgets/colors/colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PermissionScreen extends StatelessWidget {
  const PermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [primaryColorLight, lightTextColor, primaryColorLight],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage('assets/images/permission-screen-bg.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/company-logo.png',
                width: 250.w,
              ),
              SizedBox(
                height: 50.h,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35.w).copyWith(
                  top: 33.h,
                  bottom: 21.h,
                ),
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Permissions needed",
                      style: GoogleFonts.roboto(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 29.h,
                    ),
                    Visibility(
                      visible: true,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/location.png",
                                height: 19.h,
                                width: 13.22.w,
                              ),
                              SizedBox(
                                width: 10.78.w,
                              ),
                              Text(
                                "Location",
                                style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                  color: secondaryColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 24.w),
                            child: Text(
                              "For taking attendance and giving the route map for drivers.",
                              style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: const Color(0xff8A8A8A),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: true,
                      child: SizedBox(
                        height: 31.h,
                      ),
                    ),
                    Visibility(
                      visible: true,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/camera.png",
                                height: 13.h,
                                width: 15.w,
                              ),
                              SizedBox(
                                width: 10.78.w,
                              ),
                              Text(
                                "Camera",
                                style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                  color: secondaryColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 24.w),
                            child: Text(
                              "For Scanning QR code and taking \nPhotos",
                              style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: const Color(0xff8A8A8A),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    MaterialButton(
                      onPressed: () async {
                        Navigator.of(context).pushNamed(NavRoute.dashboard);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: primaryColor,
                      elevation: 0,
                      highlightElevation: 0,
                      minWidth: 241.w,
                      height: 45.h,
                      child: Text(
                        "Allow Access",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
