// ignore_for_file: file_names, prefer_const_constructors

import 'package:alfarha_cargo_app/booking_list/view/booking_list.dart';
import 'package:alfarha_cargo_app/bottom_navigation/view/bottom-nav.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:alfarha_cargo_app/success_page/success_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AddBoxScreen extends StatefulWidget {
   AddBoxScreen({super.key});

  @override
  State<AddBoxScreen> createState() => _AddBoxScreenState();
}

class _AddBoxScreenState extends State<AddBoxScreen> {
  TextEditingController controlleritemtype = TextEditingController();

  TextEditingController controlleritemcategory = TextEditingController();

  TextEditingController controlleraddremark = TextEditingController();

  TextEditingController controlleremail = TextEditingController();

  TextEditingController controllerlocation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
    appbarTitle: "Add Box", 
    widget: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [   
                            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 130,
                  height: 16,
                  child: Text("Number of Boxes",
                      style: GoogleFonts.mulish(
                          color: textColor2,
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                ),
                SizedBox(
                  width: 175,
                  height: 45,
                  child: TextField(
                    //enabled: false,
                    //  controller: controllerquantity,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: containerColorblue,
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                width: 1, color: containerBorderColorblue)),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                width: 1, color: containerBorderColorblue)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                width: 1, color: containerBorderColorblue)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                width: 1, color: containerBorderColorblue)),
        
                        //labelText: 'Name',
                        //hintText: 'Add quantity',
                        hintStyle: GoogleFonts.notoSans(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
        
            // //unit
        
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 18,
                    width: 110,
                    child: Text("Box Weight",
                        style: GoogleFonts.mulish(
                            color: textColor2,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                  ),
                  SizedBox(
                  width: 175,
                  height: 45,
                    child: TextField(
                      //enabled: false,
                      //  controller: controllerquantity,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: containerColorblue,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
        
                          //labelText: 'Name',
                          //hintText: 'Add quantity',
                          hintStyle: GoogleFonts.notoSans(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                  ),
        
                  //value
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                    height: 20,
                    width: 110,
                    child: Text("Item Category",
                        style: GoogleFonts.mulish(
                            color: textColor2,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                  ),
                  Container(
                                  height: 45.h,
                                  width: 175.w,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: containerBorderColorblue
                                    ),
                                    color:
                                        // controller.selectedMethod.value == 433
                                        //     ? const Color(0xff14aa09)
                                             containerColorblue,
                                  ),
                                  child: DropdownButton<dynamic>(
                                    itemHeight: 60.h,
                                    isExpanded: true,
                                    underline: Container(),
                                    // value: controller.selectedUser != ""
                                    //     ? controller.selectedUser
                                    //     : controller.wardData!.isEmpty == true
                                    //         ? ''
                                    //         : controller.wardData![0].id,
                                    hint: Text(
                                      "Electonics",
                                      style: GoogleFonts.notoSans(
                                        textStyle: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff59597C),
                                        ),
                                      ),
                                    ),
                                    items: [],
                                    // items: controller.wardData
                                    //     ?.map<DropdownMenuItem<dynamic>>(
                                    //         (value) {
                                    //   return DropdownMenuItem(
                                    //     value: value.id,
                                    //     child: Text(
                                    //       value.wardName.toString(),
                                    //       style: GoogleFonts.mulish(
                                    //         textStyle: TextStyle(
                                    //           fontSize: 15.sp,
                                    //           fontWeight: FontWeight.w600,
                                    //           color: const Color(0xff626262),
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   );
                                   // }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        // print("valueee : ${value}");
                                        // controller.selectedUser = value;
                                        // controller.all_ward_list.clear();
                                        // controller.all_ward_list.add(value);
                                        // controller.getOptions();
                                        // controller.getWardName();
                                        // controller.update();
                                        //  controller.getGroups(value);
                                      });
                                    },
                                  ),
                                ),
        
                  //Grand total
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 18,
                    width: 110,
                    child: Text("Charge",
                        style: GoogleFonts.mulish(
                            color: textColor2,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                  ),
                  SizedBox(
                  width: 175,
                  height: 45,
                    child: TextField(
                      //enabled: false,
                      //  controller: controllerquantity,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: containerColorblue,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
        
                          //labelText: 'Name',
                          //hintText: 'Add quantity',
                          hintStyle: GoogleFonts.notoSans(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 16,
                    width: 110,
                    child: Text("VAT %",
                        style: GoogleFonts.mulish(
                            color: textColor2,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                  ),
                  SizedBox(
                  width: 175,
                  height: 45,
                    child: TextField(
                      //enabled: false,
                      //  controller: controllerquantity,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: containerColorblue,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
        
                          //labelText: 'Name',
                          //hintText: 'Add quantity',
                          hintStyle: GoogleFonts.notoSans(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
            ),
        
            // //unit
        
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                    height: 16,
                    width: 110,
                    child: Text("VAT Amount",
                        style: GoogleFonts.mulish(
                            color: textColor2,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                  ),
                  SizedBox(
                  width: 175,
                  height: 45,
                    child: TextField(
                      //enabled: false,
                      //  controller: controllerquantity,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: containerColorblue,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
        
                          //labelText: 'Name',
                          //hintText: 'Add quantity',
                          hintStyle: GoogleFonts.notoSans(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                  ),
        
                  //value
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 16,
                    width: 110,
                    child: Text("TOTAL VALUE",
                        style: GoogleFonts.mulish(
                            color: textColor2,
                            fontWeight: FontWeight.w700,
                            fontSize: 16)),
                  ),
                  SizedBox(
                  width: 175,
                  height: 45,
                    child: TextField(
                      //enabled: false,
                      //  controller: controllerquantity,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: containerColorblue,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
        
                          //labelText: 'Name',
                          //hintText: 'Add quantity',
                          hintStyle: GoogleFonts.notoSans(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                    ),
                  ),
        
                  //Grand total
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                    width: 120,
                    child: Text("Booking Option",
                        style: GoogleFonts.mulish(
                            color: textColor2,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                  ),
                 Container(
                                  height: 45.h,
                                  width: 175.w,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: containerBorderColorblue
                                    ),
                                    color:
                                        // controller.selectedMethod.value == 433
                                        //     ? const Color(0xff14aa09)
                                             containerColorblue,
                                  ),
                                  child: DropdownButton<dynamic>(
                                    itemHeight: 60.h,
                                    isExpanded: true,
                                    underline: Container(),
                                     
                                    // value: controller.selectedUser != ""
                                    //     ? controller.selectedUser
                                    //     : controller.wardData!.isEmpty == true
                                    //         ? ''
                                    //         : controller.wardData![0].id,
                                    hint: Text(
                                      "Pickup",
                                      style: GoogleFonts.notoSans(
                                        textStyle: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff59597C),
                                        ),
                                      ),
                                    ),
                                    items: [],
                                    // items: controller.wardData
                                    //     ?.map<DropdownMenuItem<dynamic>>(
                                    //         (value) {
                                    //   return DropdownMenuItem(
                                    //     value: value.id,
                                    //     child: Text(
                                    //       value.wardName.toString(),
                                    //       style: GoogleFonts.mulish(
                                    //         textStyle: TextStyle(
                                    //           fontSize: 15.sp,
                                    //           fontWeight: FontWeight.w600,
                                    //           color: const Color(0xff626262),
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   );
                                   // }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        // print("valueee : ${value}");
                                        // controller.selectedUser = value;
                                        // controller.all_ward_list.clear();
                                        // controller.all_ward_list.add(value);
                                        // controller.getOptions();
                                        // controller.getWardName();
                                        // controller.update();
                                        //  controller.getGroups(value);
                                      });
                                    },
                                  ),
                                ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                    height: 16,
                    width: 120,
                    child: Text("GRAND TOTAL",
                        style: GoogleFonts.mulish(
                            color: textColor2,
                            fontWeight: FontWeight.w700,
                            fontSize: 14)),
                  ),
                  SizedBox(
                  width: 175,
                  height: 45,
                    child: TextField(
                      //enabled: false,
                      //  controller: controllerquantity,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: containerColorblue,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
        
                          //labelText: 'Name',
                          //hintText: 'Add quantity',
                          hintStyle: GoogleFonts.notoSans(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                    ),
                  ),
                ],
              ),
            ),
        
            // //unit
        
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                    height: 16,
                    width: 110,
                    child: Text("Received Cash",
                        style: GoogleFonts.mulish(
                            color: textColor2,
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                  ),
                  SizedBox(
                  width: 175,
                  height: 45,
                    child: TextField(
                      //enabled: false,
                      //  controller: controllerquantity,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: containerColorblue,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  width: 1, color: containerBorderColorblue)),
        
                          //labelText: 'Name',
                          //hintText: 'Add quantity',
                          hintStyle: GoogleFonts.notoSans(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                  ),
        
                  //value
                ],
              ),
            ),
        
            SizedBox(height: 50,),
             Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (() {
                       Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SuccessPage()));
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Color(0xFFFC6303)),
                          color: Color(0xFFFC6303)),
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Next",
                              style: GoogleFonts.roboto(
                                  color: white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
      
                  //2nd
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: (() {
                       Navigator.of(context).pop();
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(3, 3),
                                color: Color.fromARGB(255, 223, 221, 221),
                                blurRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: white),
                          color: white),
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Back",
                              style: GoogleFonts.roboto(
                                  color: black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        
      ),
      
    );
  }
}
