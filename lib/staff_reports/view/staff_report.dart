import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:alfarha_cargo_app/staff_reports/view/staff_report_filter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StaffReport extends StatefulWidget {
  const StaffReport({super.key});

  @override
  State<StaffReport> createState() => _StaffReportState();
}

class _StaffReportState extends State<StaffReport> {
  List<String> _date = ['A', 'B', 'C', 'D']; // Option 2
  String? _selectedDate;
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
    widget:Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            color: white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 10,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //1st
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 42,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                        color: containerColorblue,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 1, color: containerBorderColorblue)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text('Month'), // Not necessary for Option 1
                        value: _selectedDate,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedDate = newValue!;
                          });
                        },
                        items: _date.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                  //2nd
                  Container(
                    padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width / 5,
                    height: 42,
                    decoration: BoxDecoration(
                        color: containerColorblue,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 1, color: containerBorderColorblue)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text('Day'), // Not necessary for Option 1
                        value: _selectedDate,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedDate = newValue!;
                          });
                        },
                        items: _date.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
//3rd

                  Container(
                    padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width / 4,
                    height: 42,
                    decoration: BoxDecoration(
                        color: containerColorblue,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 1, color: containerBorderColorblue)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text('Year'), // Not necessary for Option 1
                        value: _selectedDate,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedDate = newValue!;
                          });
                        },
                        items: _date.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///////list containers
          ///
          ///
          ///
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin:
                      EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        // color: redcontainer,
                        width: MediaQuery.of(context).size.width / 5,
                        child: Text(
                          "Vijith",
                          style: GoogleFonts.mulish(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: primaryColor),
                        ),
                      ),
                      VerticalDivider(
                        color: dividerclr1,
                        indent: 29,
                        endIndent: 29,
                        width: 9,
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Container(
                          // color: redcontainer,
                          width: MediaQuery.of(context).size.width / 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6.0),
                                child: Text(
                                  "Amount",
                                  style: GoogleFonts.mulish(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: grey2),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6.0),
                                child: Text(
                                  "Orders",
                                  style: GoogleFonts.mulish(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: grey2),
                                ),
                              ),
                              Text(
                                "Weight",
                                style: GoogleFonts.mulish(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: grey2),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // color: redcontainer,
                        width: MediaQuery.of(context).size.width / 26,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 6.0),
                              child: Text(
                                ":",
                                style: GoogleFonts.mulish(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: grey2),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 6.0),
                              child: Text(
                                ":",
                                style: GoogleFonts.mulish(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: grey2),
                              ),
                            ),
                            Text(
                              ":",
                              style: GoogleFonts.mulish(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: grey2),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //color: redcontainer,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 6.0),
                              child: Text(
                                "OMR 2500",
                                style: GoogleFonts.mulish(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: textColor2),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 6.0),
                              child: Text(
                                "25",
                                style: GoogleFonts.mulish(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: textColor2),
                              ),
                            ),
                            Text(
                              "80 kg",
                              style: GoogleFonts.mulish(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: textColor2),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => StaffReportFilter()));
                        },
                        child: Image.asset("assets/images/repoet_arroe.png",
                        // width: 40,
                        // height: 40,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
