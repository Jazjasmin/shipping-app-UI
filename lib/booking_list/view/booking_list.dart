// ignore_for_file: unused_import

import 'package:alfarha_cargo_app/booking/view/booking.dart';
import 'package:alfarha_cargo_app/booking_list/view/booking_details.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:alfarha_cargo_app/booking_list/view/tab/listviewComponent.dart';
import 'package:alfarha_cargo_app/booking_list/view/tab/searchbar.dart';
import 'package:alfarha_cargo_app/dashboard/view/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BookingListScreen extends StatelessWidget {
  const BookingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScaffoldScreen(
      backgroundColor: custom_white,
      appbarTitle: "Booking List",
      widget: Column(
        children: [
          const SearchBar(),
          Expanded(             
          //ListViewComponent(),
         child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(top:0.0,bottom: 10),
                  child: ListViewComponent(),
                );
              }),
          ),
        // Spacer(),
          Container(
            padding: const EdgeInsets.only(
                left: 22.0, right: 22, bottom: 0, top: 20),
            // height: 95,
      
            width: MediaQuery.of(context).size.width,
            //margin: const EdgeInsets.only(bottom: 22, top: 22),
            child: TextField(
              maxLines: 2,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: containerColorblue,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                          width: 1, color: containerBorderColorblue)),
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                          width: 1, color: containerBorderColorblue)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                          width: 1, color: containerBorderColorblue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                          width: 1, color: containerBorderColorblue)),
                  hintText: 'Remarks',
                  hintStyle: TextStyle(
                      color: grey2, fontSize: 14, fontWeight: FontWeight.w400)),
            ),
          ),
          //SizedBox(height: 50,),
          Container(
           width: MediaQuery.of(context).size.width,
           child: Column(
             //mainAxisAlignment: MainAxisAlignment.center,
             //crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: InkWell(
                   onTap: (() {
                      Navigator.of(context).push(MaterialPageRoute(
                           builder: (context) => BookingScreen1()));
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
                             "Add More",
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
               ),
      
               //2nd
      
               Padding(
                 padding: const EdgeInsets.only(top: 15),
                 child: InkWell(
                   onTap: (() {
                      Navigator.of(context).push(MaterialPageRoute(
                           builder: (context) => Dashboard()));
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
                             "Back To Home",
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
               ),
             ],
           ),
            ),
        ],
      ),
      
    );
  }
}

