import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/custome_widget/custom_appbar.dart';
import 'package:alfarha_cargo_app/custome_widget/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  final bool? fromDrawer;
  const Profile({super.key , @required this.fromDrawer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: fromDrawer == true ? const CustomAppbar(title: "Profile") : null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(left: 20.w, right: 10.w, top: 50.h, bottom: 20.h),
            child: Column(
              children: [
                SizedBox(
                    height: 110.r,
                    width: 110.r,
                    child: ClipOval(
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                        placeholder: (context, url) => const ShimmerEffect(),
                        fit: BoxFit.cover,
                      ),
                    )),
      
                SizedBox(
                  height: 19.h,
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        'Adil Salam',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 22.sp,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    InkWell(
                      onTap: () {
                        // Get.to(() => EditCustomerProfile(),
                        //         arguments: controller.customerProfileModel)!
                        //     .then((value) =>
                        //         controller.update(controller.getProfile()));
                      },
                      child: SvgPicture.asset(
                        "assets/svg-icons/edit.svg",
                        height: 18.8.h,
                        width: 19.w,
                      ),
                    ),
                  ],
                ),
                // Text(controller.id.toString()),
      
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  '76874646',
                  style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: const Color(0xffA8A8AD),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF4F4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: Column(
                        children: [
                          Text(
                            'Total Cargo',
                            style: GoogleFonts.notoSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              color: const Color(0xff221D1A),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            '0',
                            style: GoogleFonts.notoSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                              color: const Color(0xff221D1A),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFCF0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: Column(
                        children: [
                          Text(
                            'Pending Cargo',
                            style: GoogleFonts.notoSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              color: const Color(0xff221D1A),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            '0',
                            style: GoogleFonts.notoSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                              color: const Color(0xff221D1A),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE9F7FF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: Column(
                        children: [
                          Text(
                            'Success Cargo',
                            style: GoogleFonts.notoSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              color: const Color(0xff221D1A),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            '0',
                            style: GoogleFonts.notoSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                              color: const Color(0xff221D1A),
                            ),
                          ),
                        ],
                      ),
                    ),
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
        )));
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: SizedBox(
              width: 100.w,
              child: Text(
                profileElements.toString(),
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: const Color(0xff474747),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:50.0),
            child: SizedBox(
              width: 150.w,
              child: Text(
                data.toString(),
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: const Color(0xff474747),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
