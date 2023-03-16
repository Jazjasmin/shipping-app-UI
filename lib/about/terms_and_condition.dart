import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
        backgroundColor: custom_white,
        appbarTitle: 'Terms And Conditions',
        widget: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
               SizedBox(
                width: 420,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
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
                child: SizedBox(
                  width: 420,
                  //height: 45,
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
              SizedBox(
                width: 420,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
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
                child: SizedBox(
                  width: 420,
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
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(onPressed: (){},
                  color: custom_white,
                            minWidth: 120.w,
                            height: 44.h,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "Decline",
                              style: GoogleFonts.roboto(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: custom_black,
                              ),
                            ),
                  ),
                  const SizedBox(width: 35,),
                   MaterialButton(onPressed: (){},
                  color: custom_orange,
                            minWidth: 120.w,
                            height: 44.h,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "Accept",
                              style: GoogleFonts.roboto(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: custom_white,
                              ),
                            ),
                  ),
                const SizedBox(height: 25,),
                ],
              )
            ],
          ),
          
        ));
  }
}
