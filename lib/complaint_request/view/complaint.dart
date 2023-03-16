import 'package:alfarha_cargo_app/complaint_request/view/complaint_add.dart';
import 'package:alfarha_cargo_app/complaint_request/view/complaint_list.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Complaints extends StatefulWidget {
   Complaints({Key? key,this.selectedIndex}) : super(key: key);
  int? selectedIndex;
  @override
  _ComplaintsState createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  //PageController? pageController;

  // int selectedIndex = 0;

  final List<Widget> listOfPages = [
    ComplaintAddScreen(),
    ComplaintListView()
  ];
  

  @override
  void initState() {
    widget.selectedIndex ==0;
    //pageController = PageController(initialPage: widget.selectedIndex!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
      appbarTitle: "Complaint request", 
      widget:SafeArea(
            left: true,
            right: true,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              //pageController!.jumpToPage(0);
                              widget.selectedIndex = 0;
                            });
                          },
                          child: Container(
                            width: 160.w,
                            height: 45.w,
                            decoration: BoxDecoration(
                              color: widget.selectedIndex == 0
                                  ? custom_orange
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: custom_orange,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:10.0,right: 10),
                              child: Row(
                               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset("assets/images/complaint_add.png",
                                  color: widget.selectedIndex == 0
                                  ? Colors.white
                                  : custom_orange,),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Add New \nComplaint",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.mulish(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: widget.selectedIndex == 0
                                          ? Colors.white
                                          : custom_orange,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              //pageController!.jumpToPage(1);
                              widget.selectedIndex = 1;
                            });
                          },
                          child: Container(
                            width: 160.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                              color: widget.selectedIndex == 1
                                  ? custom_orange
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: custom_orange,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:10.0,right: 10),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset("assets/images/complaint_list.png",
                                  color: widget.selectedIndex == 1
                                  ? Colors.white
                                  : custom_orange,),
                                   SizedBox(width: 10,),
                                  Text(
                                    "List View",
                                    style: GoogleFonts.mulish(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: widget.selectedIndex == 1
                                          ? Colors.white
                                          : custom_orange,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      //controller: pageController,
                      children: listOfPages,
                      onPageChanged: (idx) {
                        setState(() {
                          widget.selectedIndex = idx;
                        });
                      },
                    ),
                  ),
                ],
              ),
            )));
  }
}
