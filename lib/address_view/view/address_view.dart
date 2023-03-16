// ignore_for_file: unused_import

import 'package:alfarha_cargo_app/add_box/view/addbox_screen.dart';
import 'package:alfarha_cargo_app/address_view/view/tabs/address_container.dart';
import 'package:alfarha_cargo_app/address_view/view/tabs/button_with_icon.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressView extends StatefulWidget {
  const AddressView({super.key});

  @override
  State<AddressView> createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
      appbarTitle: "Add Address", 
      widget:  SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(25.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, left: 8),
                child: Text(
                  "Shipper Address",
                  style: GoogleFonts.mulish(
                      color: textColor2,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
      
              //address container
      
              AddressContainer(
                name: "Srv Infotech ",
                number: "1234-5678-9012-3456",
                Address:
                    "Near Toyota showroom, 2nd Street Ruwi,Muscat - 350114, Oman, 9876543210",
              ),
      
              //2nd part
      
              ButtonwithIcon(),
      //consignee address
      
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                  left: 8,
                  top: 12,
                ),
                child: Text(
                  "Consignee Address",
                  style: GoogleFonts.mulish(
                      color: textColor2,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
      
              //address container
      
              AddressContainer(
                name: "John Adam",
                number: "010203040506",
                Address:
                    "Down Town Building, Thalap, Kannur, Kerala, India, 670001, 9876012345, 9876012543",
              ),
      
              //button with icon
              ButtonwithIcon(),
      
              //button
      
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: InkWell(
                        onTap: (() {
                           Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddBoxScreen()));
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
                    ),
      
                    //2nd
      
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: InkWell(
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
