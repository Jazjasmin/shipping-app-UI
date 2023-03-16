import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key? key,  this.id}) : super(key: key);
  final String? id;

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
        backgroundColor: custom_white,
        appbarTitle: 'Adil Suhail',
        widget: Padding(
          padding: const EdgeInsets.only(top: 25,left:15,right: 10),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Center(
                      child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: custom_orange,
                                    borderRadius: BorderRadius.circular(60)),
                                child: CircleAvatar(
                                  backgroundColor: custom_orange,
                                    backgroundImage:
                                        AssetImage("assets/images/avatar.png")),
                              ),
                    ),
                
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Adil Suhail",
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 22.sp,
                        color: const Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                  width: 9.w,
                ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "assets/svg/edit.svg",
                        height: 18.8.h,
                        width: 19.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "6789 012 345",
                  // customer.customerTypeName.toString(),
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    color: const Color(0xff626262),
                  ),
                ),
                 SizedBox(
                  height: 41.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: Column(
                        children: const [
                          Text("Total Cargo",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                           Text("0",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: Column(
                        children: const [
                          Text("Pending Cargo",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                          SizedBox(height: 10,),
                           Text("0",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: Column(
                        children: const [
                          Text("Success Cargo",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                           Text("0",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                    )
                  ],
                ),
                
                SizedBox(
                  height: 30.h,
                ),
                
                const ProfileRows(
                  profileElements: 'Place',
                  data: 'Kannur',
                ),
                const Divider(
                  color: Color(0xff8A8A8A),
                  height: 0,
                ),
                const ProfileRows(
                  profileElements: 'Whatsapp',
                  data: '1245789214',
                ),
                const Divider(
                  color: Color(0xff8A8A8A),
                  height: 0,
                ),
                const ProfileRows(profileElements: 'District', data: 'Kannur'),
                const Divider(
                  color: Color(0xff8A8A8A),
                  height: 0,
                ),
                const ProfileRows(
                  profileElements: 'Municipality',
                  data: 'Kannur',
                ),
                const Divider(
                  color: Color(0xff8A8A8A),
                  height: 0,
                ),
                const ProfileRows(
                  profileElements: 'Ward',
                  data: 'Talap',
                ),
                const Divider(
                  color: Color(0xff8A8A8A),
                  height: 0,
                ),
              ],
            ),
          ),
        ));
  }
}

class ProfileRows extends StatelessWidget {
  const ProfileRows(
      {Key? key, required this.profileElements, required this.data})
      : super(key: key);

  final String? profileElements;
  final String? data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 188.w,
            child: Text(
              profileElements.toString(),
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: const Color(0xff474747),
              ),
            ),
          ),
          SizedBox(
            width: 173.w,
            child: Text(
              data.toString(),
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: const Color(0xff474747),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
