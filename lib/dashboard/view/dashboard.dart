import 'package:alfarha_cargo_app/constant_widgets/colors/colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/custome_widget/custom_appbar.dart';
import 'package:alfarha_cargo_app/custome_widget/custom_drawer.dart';
import 'package:alfarha_cargo_app/dashboard/view/bottom_menu_view/home.dart';
import 'package:alfarha_cargo_app/dashboard/view/bottom_menu_view/profile.dart';
import 'package:alfarha_cargo_app/notification/view/notification.dart';
import 'package:alfarha_cargo_app/user_profile/view/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  // For bottom navigation.
  final List<Widget> _bottonNavItems = [
    Home(),
    Text('Add'),
    Text('Route'),
    Profile(fromDrawer: false,),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      appBar: _selectedIndex == 0
          ? AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                ),
                iconSize: 25.h,
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              ),
              title: Image.asset(
                'assets/icons/company-logo-white.png',
                height: 37.h,
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    Get.to(()=>NotificationScreen());
                  },
                  icon: Icon(Icons.notifications_none_rounded),
                  iconSize: 25.h,
                )
              ],
              elevation: 0,
              backgroundColor: Colors.transparent,
              toolbarHeight: 70.h,
            )
          : CustomAppbar(
              title: _selectedIndex == 3 ? 'Profile' : 'Title',
              back: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
      extendBodyBehindAppBar: true,
      body: _bottonNavItems.elementAt(_selectedIndex),
      bottomNavigationBar: GNav(
        selectedIndex: _selectedIndex,
          backgroundColor: primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
          iconSize: 20.w,
          tabBackgroundColor: Color(0xFFFF8A1E),
          tabMargin: EdgeInsets.all(6.h),
          onTabChange: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              iconColor: lightTextColor,
              iconActiveColor: lightTextColor,
              textColor: lightTextColor,
              text: 'HOME',
              textStyle: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: lightTextColor),
              gap: 7.w,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            ),
            GButton(
              icon: Icons.add,
              iconColor: lightTextColor,
              iconActiveColor: lightTextColor,
              textColor: lightTextColor,
              text: 'ADD',
              textStyle: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: lightTextColor),
              gap: 7.w,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            ),
            GButton(
              icon: Icons.route_outlined,
              iconColor: lightTextColor,
              iconActiveColor: lightTextColor,
              textColor: lightTextColor,
              text: 'LOCATION',
              textStyle: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: lightTextColor),
              gap: 7.w,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            ),
            GButton(
              icon: Icons.person_outline,
              iconColor: lightTextColor,
              iconActiveColor: lightTextColor,
              textColor: lightTextColor,
              //text: 'PROFILE',
              textStyle: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: lightTextColor),
              gap: 7.w,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            ),
          ]),
    );
  }
}
