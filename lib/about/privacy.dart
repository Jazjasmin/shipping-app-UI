import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
        backgroundColor: custom_white,
        appbarTitle: 'Privacy Policy',
        widget: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Column(
            children: [
              Container(
                width: 420,
                height: 45,
                decoration: const BoxDecoration(color: Color(0xFFF0F0F0)),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "What is Lorem Ipsum?",
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff252525),
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0, right: 35, top: 15),
                child: Container(
                  width: 420,
                  //height: 45,
                  decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
                  child: Center(
                    child: Text(
                      "        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thindustry's standard dummy text ever since the 1500s,when an unknown printer took a galley of type andscrambled it to make a type specimen book.It has survived not only five centuries, but also leap into electronic typesetting, remaining essentiall unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsumpassages, and more recently with desktop publishing software like Aldus PageMaker including versions ofLorem Ipsum.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff474747),
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 420,
                height: 45,
                decoration: const BoxDecoration(color: Color(0xFFF0F0F0)),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "What is Lorem Ipsum?",
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff252525),
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0, right: 35, top: 15),
                child: Container(
                  width: 420,
                  //height: 45,
                  decoration: const BoxDecoration(color: Color(0xFFFFFFFF)),
                  child: Center(
                    child: Text(
                      "        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been thindustry's standard dummy text ever since the 1500s,when an unknown printer took a galley of type andscrambled it to make a type specimen book.It has survived not only five centuries, but also leap into electronic typesetting, remaining essentiall unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsumpassages, and more recently with desktop publishing software like Aldus PageMaker including versions ofLorem Ipsum.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff474747),
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
