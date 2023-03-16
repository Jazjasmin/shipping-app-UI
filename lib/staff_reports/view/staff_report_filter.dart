import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StaffReportFilter extends StatefulWidget {
  const StaffReportFilter({super.key});

  @override
  State<StaffReportFilter> createState() => _StaffReportFilterState();
}

class _StaffReportFilterState extends State<StaffReportFilter> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
    appbarTitle: "Staff Report", 
    actionButton: [
      Image.asset(
        "assets/images/reportfilter.png"
      )
    ],
    widget: Column(
        children: [
          Card(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 15,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Text(
                          "Start Date" + "  ",
                          style: GoogleFonts.mulish(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: textColor2),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "12.10.2022",
                          style: GoogleFonts.mulish(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: greenfont),
                        ),
                      ],
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(right: 10.0,left:10),
                   child: Row(
                          children: [
                            Text(
                              "End Date" + "  ",
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: textColor2),
                            ),
                            Text(
                              "12.10.2022" + "  ",
                              style: GoogleFonts.mulish(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: greenfont),
                            ),
                            InkWell(
                              child: Image.asset(
                                edit2,
                                height: 19,
                              ),
                            ),
                          ],
                        ),
                 ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
            itemBuilder:(context, index) {
              return Container(
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.only(top: 5, left: 22, right: 22, bottom: 5),
            color: white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height /3.9,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: bgclr1,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      // color: bgclr1,
                      width: MediaQuery.of(context).size.width / 12,
                      height: MediaQuery.of(context).size.height / 26,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            persn,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Vijith",
                        style: GoogleFonts.mulish(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: orange1),
                      ),
                    ),
                  ],
                ),
                Divider(
                  // indent: 28,
                  // endIndent: 28,
                  thickness: 1,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        VerticalDivider(
                          color: verdivider,
                          indent: 12,
                          endIndent: 12,
                          thickness: 1,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pickups: 0",
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: grey2),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "New Orders:2",
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: grey2),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Packed: 23",
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: grey2),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Processed: 0",
                              style: GoogleFonts.mulish(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: grey2),
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    VerticalDivider(
                      color: black,
                      indent: 12,
                      endIndent: 12,
                      thickness: 4,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivered:0",
                            style: GoogleFonts.mulish(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: grey2),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Amount:OMR 0",
                            style: GoogleFonts.mulish(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: grey2),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Expenses:OMR 0",
                            style: GoogleFonts.mulish(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: grey2),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Total Weight: 0",
                            style: GoogleFonts.mulish(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: grey2),
                          ),
                        ]),
                  ],
                )
              ],
            ),
          );
            }, ))
          
        ],
      ),
    );
  }
}
