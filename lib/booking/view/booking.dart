// ignore_for_file: duplicate_import

import 'package:alfarha_cargo_app/booking/view/tabs/tabInternational.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BookingScreen1 extends StatefulWidget {
  const BookingScreen1({super.key});

  @override
  State<BookingScreen1> createState() => _BookingScreen1State();
}

class _BookingScreen1State extends State<BookingScreen1> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
      appbarTitle: "Booking", 
      widget: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
              padding: EdgeInsets.only(top: 10),
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 5,
                        color: primaryColor,
                      ),
                      insets: EdgeInsets.symmetric(horizontal: 20)),
                  tabs: [
                    Tab(
                      child: Text(
                        "International",
                        style: GoogleFonts.mulish(
                            color: textColor2.withOpacity(.6),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Domestic",
                        style: GoogleFonts.mulish(
                            color: textColor2.withOpacity(.6),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  TabInternational(),

                  ///////////////domestic tab
                  Container(
                    child: TabInternational(),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
