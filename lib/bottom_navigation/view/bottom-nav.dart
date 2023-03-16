import 'package:alfarha_cargo_app/add_box/view/addbox_screen.dart';
import 'package:alfarha_cargo_app/booking/view/booking.dart';
import 'package:alfarha_cargo_app/dashboard/view/dashboard.dart';
import 'package:alfarha_cargo_app/my_order/view/my_order.dart';
import 'package:alfarha_cargo_app/user_profile/view/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottamNavigation extends StatelessWidget {
  BottamNavigation({Key? key}) : super(key: key);

  static ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

  final _pages = [
   Dashboard(),
    AddBoxScreen(),
    
    MyOrder(),
    UserProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            print(index);
            return _pages[index];
          },
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 0.0, right: 10),
          child: Container(
            height: 60,
            width: 420,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: SvgPicture.asset(
                          'assets/svg/item_home.svg',
                          height: 24.r,
                          width: 24.r,
                          color: Color(0Xff59597C),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "HOME",
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color(0xFF59597C))),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BookingScreen1()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: SvgPicture.asset(
                          'assets/svg/item_add_new.svg',
                          height: 24.r,
                          width: 24.r,
                          color: Color(0Xff59597C),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "ADD NEW",
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color(0xFF59597C))),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: SvgPicture.asset(
                          'assets/svg/item_attend.svg',
                          height: 24.r,
                          width: 24.r,
                          color: Color(0Xff59597C),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "MyOrder",
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color(0xFF59597C))),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyOrder()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: SvgPicture.asset(
                          "assets/svg/item_truck.svg",
                          height: 24.r,
                          width: 24.r,
                          color: Color(0Xff59597C),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'DELIVER',
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color(0xFF59597C))),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => UserProfile()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: SvgPicture.asset(
                          "assets/svg/item_profile.svg",
                          height: 24.r,
                          width: 24.r,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'PROFILE',
                        style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color(0xFF59597C))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
