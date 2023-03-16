import 'package:alfarha_cargo_app/add_address/view/consignee_address.dart';
import 'package:alfarha_cargo_app/add_address/view/shipper_details.dart';
import 'package:alfarha_cargo_app/add_address/view/stepper_widget.dart';
import 'package:alfarha_cargo_app/add_box/view/addbox_screen.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<int> TextConstant =[
  
];

final List<String> titles = 
[
  "add address",
  "shipper Details",
  "Consignee Details",  
]; 
//[TextConstant.CART, TextConstant.ADDRESS, TextConstant.PAYMENT];
int _curStep = 1;

class Addressdetails extends StatelessWidget {
  const Addressdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white,
      appbarTitle: "Add Address",
      widget: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:10.0,right:8,top:15),
            child: AddressStepper(
                width: MediaQuery.of(context).size.width,
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
              padding: const EdgeInsets.only(bottom: 8.0, top: 25),
              child: Text("Shipper Address",
                  style: GoogleFonts.mulish(
                      color: textColor2,
                      fontWeight: FontWeight.w600,
                      fontSize: 16)),
            ),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              //decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
              //),
              child: TextField(
                // controller: controlleritemtype,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: containerColorblue,
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 1, color: containerBorderColorblue)),
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 1, color: containerBorderColorblue)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 1, color: containerBorderColorblue)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 1, color: containerBorderColorblue)),
                    //labelText: 'Name',
                    hintText: 'No Address Found',
                    hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff626262))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, top: 0),
              child: Text("Consignee Address",
                  style: GoogleFonts.mulish(
                      color: textColor2,
                      fontWeight: FontWeight.w600,
                      fontSize: 16)),
            ),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              //decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
              //),
              child: TextField(
                //controller: controlleritemcategory,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: containerColorblue,
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 1, color: containerBorderColorblue)),
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 1, color: containerBorderColorblue)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 1, color: containerBorderColorblue)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                            width: 1, color: containerBorderColorblue)),

                    //labelText: 'Name',
                    hintText: 'No Address Found',
                    hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff626262))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 44,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: custom_orange,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShipperDetails()));
                        },
                        child: Text(
                          'Next',
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: custom_white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 44,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Back',
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: custom_black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
