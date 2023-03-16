import 'package:alfarha_cargo_app/about/about.dart';
import 'package:alfarha_cargo_app/about/contact.dart';
import 'package:alfarha_cargo_app/about/privacy.dart';
import 'package:alfarha_cargo_app/about/terms_and_condition.dart';
import 'package:alfarha_cargo_app/booking/view/booking.dart';
import 'package:alfarha_cargo_app/booking_list/view/booking_details.dart';
import 'package:alfarha_cargo_app/complaint_request/view/complaint.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/dashboard/view/bottom_menu_view/profile.dart';
import 'package:alfarha_cargo_app/faq/view/faq.dart';
import 'package:alfarha_cargo_app/settings/settings.dart';
import 'package:alfarha_cargo_app/wallet/wallet_view/view/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  // GetStorage store = GetStorage();
  String drVal = "";

  int value = 1;

  var locale1 = const Locale('en', 'US');
  var locale2 = const Locale('ml', 'ML');

  updateLanguage(Locale locale) {
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    // value = store.read("val") ?? 1;
    return SizedBox(
      width: 300.w,
      child: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(                  
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10))
                  ),
                  height: 164.h,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child:
                          // GetBuilder<ProfileController>(
                          //   init: ProfileController(),
                          //   builder: (profile) =>
                          Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // border: Border.all(
                                //   color: primaryColorLight,
                                //   width: 1.5.sp,
                                // ),
                              ),
                              height: 60.r,
                              width: 60.r,
                              padding: EdgeInsets.only(
                                  left: 5.r, right: 5.r, top: 5.r, bottom: 5.r),
                              child:
                                  // profile.profile.result?[0].userImage == null
                                  //     ?
                                  ClipOval(
                                      child: Image.asset(
                                "assets/images/profile-avatar.png",
                                fit: BoxFit.contain,
                              ))
                              // : profile.profile.result![0].userImage!
                              //         .isNotEmpty
                              //     ? ClipOval(
                              //         child: CachedNetworkImage(
                              //           imageUrl:
                              //               "https://nodeapi$linkStatus.nellikkastore.com/uploads/user_images/${profile.profile.result![0].userImage}",
                              //           placeholder: (context, url) =>
                              //               const ShimmerEffect(),
                              //           fit: BoxFit.cover,
                              //         ),
                              //       )
                              //     : ClipOval(
                              //         child: Image.asset(
                              //         "assets/images/profile_picture.png",
                              //         fit: BoxFit.contain,
                              //       )),
                              ),
                          SizedBox(
                            width: 14.w,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  // Get.to(() => Profile(
                                  //       fromDrawer: true,
                                  //     ));
                                },
                                child: Text(
                                  // profile.profile.result == null
                                  //     ? ""
                                  //     : profile.profile.result![0].firstname
                                  //         .toString(),
                                  'Adil Salam',
                                  style: GoogleFonts.notoSans(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffFCF8FF),
                                  ),
                                ),
                              ),
                              Text(
                                // profile.profile.result == null
                                //     ? ""
                                //     : profile.profile.result![0].privilegeName
                                //         .toString(),
                                '76874646',
                                style: GoogleFonts.notoSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: custom_white,
                                ),
                              ),
                              // SizedBox(height: 5.h),
                              // profile.localBodyList!.length == 1
                              //     ? Container(
                              //         height: 35.h,
                              //         width: 186.w,
                              //         decoration: BoxDecoration(
                              //             borderRadius:
                              //                 BorderRadius.circular(5),
                              //             border: Border.all(
                              //                 color: Colors.white,
                              //                 width: 1.sp)),
                              //         padding:
                              //             EdgeInsets.symmetric(horizontal: 8.w),
                              //         child: Align(
                              //           child: Text(
                              //             "${profile.localBodyList![0].localbodyName}",
                              //             style: GoogleFonts.mulish(
                              //               fontSize: 13.sp,
                              //               fontWeight: FontWeight.w600,
                              //               color: Colors.white,
                              //             ),
                              //           ),
                              //           alignment: Alignment.centerLeft,
                              //         ))
                              //     : Container(
                              //         height: 35.h,
                              //         width: 186.w,
                              //         decoration: BoxDecoration(
                              //             border:
                              //                 Border.all(color: Colors.white),
                              //             borderRadius:
                              //                 BorderRadius.circular(5.0)),
                              //         padding:
                              //             EdgeInsets.symmetric(horizontal: 8.w),
                              //         child: DropdownButtonHideUnderline(
                              //           child: DropdownButton2(
                              //             icon: const Icon(
                              //               Icons.keyboard_arrow_down_outlined,
                              //               color: Colors.white,
                              //             ),
                              //             dropdownDecoration:
                              //                 const BoxDecoration(
                              //                     color: Color(0xff01AB4F)),
                              //             iconEnabledColor: Colors.white,
                              //             hint: Text(
                              //               "Select",
                              //               style: GoogleFonts.poppins(
                              //                 fontSize: 13.sp,
                              //                 fontWeight: FontWeight.w600,
                              //                 color: Colors.grey,
                              //               ),
                              //             ),
                              //             onChanged: (value) {
                              //               // print(value);
                              //               // profile.drVal = value.toString();
                              //               // // profile.update();
                              //               // store.write("localBody_id",
                              //               //     value.toString());
                              //               // profile.apiNotification();
                              //               // profile.apiDashBoard();
                              //               // profile.update();
                              //             },
                              //             isExpanded: true,
                              //             value: profile.drVal,
                              //             items: profile.localBodyList!
                              //                 .map<DropdownMenuItem<String>>(
                              //                     (value) {
                              //               return DropdownMenuItem<String>(
                              //                 value: value.localbodyId,
                              //                 child: Text(
                              //                   value.localbodyName.toString(),
                              //                   style: GoogleFonts.mulish(
                              //                     fontSize: 13.sp,
                              //                     fontWeight: FontWeight.w600,
                              //                     color: Colors.white,
                              //                   ),
                              //                 ),
                              //               );
                              //             }).toList(),
                              //           ),
                              //         ),
                              //       )
                            ],
                          ),
                        ],
                      ),
                      // ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),

                // Container(
                //   child:
                //       // GetBuilder<ProfileController>(
                //       //   init: ProfileController(),
                //       //   builder: (profile) =>
                //       Row(
                //     children: [
                //       Visibility(
                //         // visible: profile.menuIdz2!
                //         //     .contains("6251595ddbe960771becbe6f"),
                //         child: Column(
                //           mainAxisSize: MainAxisSize.min,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Container(
                //               child: ItemTile(
                //                 leadingWidth: 18.w,
                //                 title: "Home".tr,
                //                 svgName: "assets/svg/home.svg",
                //                 iconHeight: 18.h,
                //                 iconWidth: 18.w,
                //                 onTap: () {
                //                   // store.read("privilege") ==
                //                   //         "6200f7775c049832c4ab60cb"
                //                   //     ? DriverDashboard()
                //                   //     : Home();

                //                   Navigator.of(context).pop();

                //                   /*Get.to(() => Home(
                //                 ));*/
                //                 },
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                //   // ),
                // ),

                Container(
                  child:
                      // GetBuilder<ProfileController>(
                      //   init: ProfileController(),
                      //   builder: (profile) =>
                      Row(
                    children: [
                      Visibility(
                        // visible: profile.menuIdz2!
                        //     .contains("6173dae3c7a305c823ab93aa"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ItemTile(
                                leadingWidth: 18.w,
                                title: "Profile".tr,
                                svgName: "assets/svg-icons/profile.svg",
                                iconHeight: 18.h,
                                iconWidth: 18.w,
                                onTap: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile(fromDrawer: true,)));
                                      
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),

                Container(
                  child:
                      // GetBuilder<ProfileController>(
                      //   init: ProfileController(),
                      //   builder: (profile) =>
                      Row(
                    children: [
                      //child:profile.menuIdz2.contains("6173dae3c7a305c823ab93aa"),
                      Visibility(
                        // visible: profile.menuIdz2!
                        //     .contains("6173dbeec7a305c823ab93ab"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ItemTile(
                                leadingWidth: 18.w,
                                title: "Wallet".tr,
                                svgName: "assets/svg-icons/wallet.svg",
                                iconHeight: 16.66.h,
                                iconWidth: 18.w,
                                onTap: () {
                                   Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WalletScreen()));
                                    
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),

                Container(
                  child:
                      // GetBuilder<ProfileController>(
                      //   init: ProfileController(),
                      //   builder: (profile) =>
                      Row(
                    children: [
                      //child:profile.menuIdz2.contains("6173dae3c7a305c823ab93aa"),
                      Visibility(
                        // visible: profile.menuIdz2!
                        //     .contains("6173dbeec7a305c823ab93ab"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ItemTile(
                                leadingWidth: 18.w,
                                title: "Tracking".tr,
                                svgName: "assets/svg-icons/tracking.svg",
                                iconHeight: 18.h,
                                iconWidth: 18.w,
                               onTap: () {
                                   Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BookingListDetails()));
                                    
                                },
                                
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),

                Container(
                  child:
                      // GetBuilder<ProfileController>(
                      //   init: ProfileController(),
                      //   builder: (profile) =>
                      Row(
                    children: [
                      Visibility(
                        // visible: profile.menuIdz2!
                        //     .contains("623d99fdeeede5a5ba5877d8"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ItemTile(
                                leadingWidth: 18.w,
                                title: "Booking".tr,
                                svgName: "assets/svg-icons/booking.svg",
                                iconHeight: 17.h,
                                iconWidth: 18.w,
                                onTap: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BookingScreen1()));
                                    
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),

                Container(
                  child:
                      // GetBuilder<ProfileController>(
                      //   init: ProfileController(),
                      //   builder: (profile) =>
                      Row(
                    children: [
                      Visibility(
                        // visible: profile.menuIdz2!
                        //     .contains("61f8ccecf6c47557acd84c19"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ItemTile(
                                leadingWidth: 18.w,
                                title: "Register Complaint".tr,
                                svgName: "assets/svg-icons/register-complaint.svg",
                                iconHeight: 18.h,
                                iconWidth: 18.w,
                                onTap: () {
                                 Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Complaints(selectedIndex: 0,)));
                                    
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),

                Divider(
                  color: const Color(0xffF5F5F5),
                  thickness: 1.sp,
                ),

                Container(
                  child:
                      // GetBuilder<ProfileController>(
                      //   init: ProfileController(),
                      //   builder: (profile) =>
                      Row(
                    children: [
                      Visibility(
                        // visible: profile.menuIdz2!
                        //     .contains("61f8cd41f6c47557acd84c1a"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ItemTile(
                                leadingWidth: 18.w,
                                title: "Settings".tr,
                                svgName: "assets/svg-icons/settings.svg",
                                iconHeight: 18.h,
                                iconWidth: 18.w,
                                onTap: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SettingsScreen()));
                                    
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),

                Container(
                  child:
                      // GetBuilder<ProfileController>(
                      //   init: ProfileController(),
                      //   builder: (profile) =>
                      Row(
                    children: [
                      Visibility(
                        // visible: profile.menuIdz2!
                        //     .contains("61f8cd73f6c47557acd84c1b"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ItemTile(
                                leadingWidth: 16.33.w,
                                title: "Terms And Condition".tr,
                                svgName: "assets/svg-icons/terms.svg",
                                iconHeight: 18.h,
                                iconWidth: 18.w,
                                onTap: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TermsAndCondition()));
                                    
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),
                Container(
                  child:
                      // GetBuilder<ProfileController>(
                      //   init: ProfileController(),
                      //   builder: (profile) =>
                      Row(
                    children: [
                      Visibility(
                        // visible: profile.menuIdz2!
                        //     .contains("61f8cdb6f6c47557acd84c1c"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ItemTile(
                                leadingWidth: 18.w,
                                title: "About Us".tr,
                                svgName: "assets/svg-icons/about.svg",
                                iconHeight: 18.h,
                                iconWidth: 16.w,
                                onTap: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>About()));
                                    
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),

                Container(
                  child:
                      // GetBuilder<ProfileController>(
                      //   init: ProfileController(),
                      //   builder: (profile) =>
                      Row(
                    children: [
                      Visibility(
                        // visible: profile.menuIdz2!
                        //     .contains("624822450e877b639016252c"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ItemTile(
                                leadingWidth: 18.w,
                                title: "Contact Us".tr,
                                svgName: "assets/svg-icons/contact.svg",
                                iconHeight: 18.h,
                                iconWidth: 18.w,
                                onTap: () {
                                Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Contact()));
                                    
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),

                Container(
                  child:
                      // GetBuilder<ProfileController>(
                      //   init: ProfileController(),
                      //   builder: (profile) =>
                      Row(
                    children: [
                      Visibility(
                        // visible: profile.menuIdz2!
                        //     .contains("625d2bdab1bea69667f71fc2"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ItemTile(
                                leadingWidth: 18.w,
                                title: "FAQs".tr,
                                svgName: "assets/svg-icons/faq.svg",
                                iconHeight: 16.h,
                                iconWidth: 16.w,
                               onTap: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Faq()));
                                    
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),

                Container(
                  child:
                      // GetBuilder<ProfileController>(
                      //   init: ProfileController(),
                      //   builder: (profile) =>
                      Row(
                    children: [
                      Visibility(
                        // visible: profile.menuIdz2!
                        //     .contains("6248227c0e877b639016252d"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ItemTile(
                                leadingWidth: 18.w,
                                title: "Privacy Policy".tr,
                                svgName: "assets/svg-icons/privacy.svg",
                                iconHeight: 19.h,
                                iconWidth: 18.w,
                                onTap: () {
                                   Navigator.of(context).pop();
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
                                    
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class ItemTile extends StatelessWidget {
  const ItemTile(
      {Key? key,
      required this.leadingWidth,
      required this.title,
      required this.svgName,
      this.widget,
      required this.iconHeight,
      required this.iconWidth,
      this.onTap,
      this.color})
      : super(key: key);

  final double leadingWidth;
  final String title;
  final String svgName;
  final Widget? widget;
  final double iconHeight;
  final double iconWidth;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 45.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: iconHeight,
                    width: iconWidth,
                    child: SvgPicture.asset(
                      svgName,
                      color: const Color(0xff8A8A8A),
                    ),
                  ),
                  SizedBox(
                    width: leadingWidth,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.mulish(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff474747),
                    ),
                  ),
                ],
              ),
              if (widget == null) Container() else widget!,
            ],
          ),
        ),
      ),
    );
  }
}
