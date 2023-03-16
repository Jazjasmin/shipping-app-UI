import 'package:alfarha_cargo_app/add_address/view/consignee_address.dart';
import 'package:alfarha_cargo_app/add_address/view/stepper_widget.dart';
import 'package:alfarha_cargo_app/address_view/view/address_view.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ConsigneeDetails extends StatelessWidget {
  const ConsigneeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
    appbarTitle: "Consignee Details", 
    widget: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:10.0,right:8,top:15),
          child: ConsigneeStepper(
              width: MediaQuery.of(context).size.width,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
            padding: const EdgeInsets.only(bottom: 8.0,top:10),
            child: Text("Consignee Name",
                style: GoogleFonts.mulish(
                    color: textColor2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
            ),
            child: TextField(
             // controller: controlleritemtype,
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
                  //labelText: 'Name',
                  hintText: 'Srv Infotech',
                  hintStyle:
                      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Color(0xff626262))),
            ),
          ),
    
          //item category
    
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 25),
            child: Text("Consignee ID",
                style: GoogleFonts.mulish(
                    color: textColor2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
            ),
            child: TextField(
              //controller: controlleritemcategory,
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
    
                  //labelText: 'Name',
                  hintText: '01354789',
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff626262))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("House Name",
                style: GoogleFonts.mulish(
                    color: textColor2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
            ),
            child: TextField(
              //controller: controlleritemtype,
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
                  //labelText: 'Name',
                  hintText: 'SRV Infotech',
                  hintStyle:
                      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Color(0xff626262))),
            ),
          ),
    
          //item category
    
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 25),
            child: Text("Landmark",
                style: GoogleFonts.mulish(
                    color: textColor2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
            ),
            child: TextField(
              //controller: controlleritemcategory,
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
    
                  //labelText: 'Name',
                  hintText: 'Down Town Building',
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff626262))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0,top:25),
            child: Text("Street Name",
                style: GoogleFonts.mulish(
                    color: textColor2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
            ),
            child: TextField(
              //controller: controlleritemtype,
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
                  //labelText: 'Name',
                  hintText: 'Talap',
                  hintStyle:
                      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Color(0xff626262))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("Post Office",
                style: GoogleFonts.mulish(
                    color: textColor2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
            ),
            child: TextField(
             // controller: controlleritemtype,
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
                  //labelText: 'Name',
                  hintText: 'Kannur',
                  hintStyle:
                      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Color(0xff626262))),
            ),
          ),
    
          //item category
    
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 25),
            child: Text("Pin Code",
                style: GoogleFonts.mulish(
                    color: textColor2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
            ),
            child: TextField(
              //controller: controlleritemcategory,
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
    
                  //labelText: 'Name',
                  hintText: '67001',
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff626262))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text("State or Province",
                style: GoogleFonts.mulish(
                    color: textColor2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
            ),
            child: TextField(
              //controller: controlleritemtype,
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
                  //labelText: 'Name',
                  hintText: 'Kerala',
                  hintStyle:
                      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Color(0xff626262))),
            ),
          ),
    
          //item category
    
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 25),
            child: Text("District Or Division",
                style: GoogleFonts.mulish(
                    color: textColor2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
            ),
            child: TextField(
              //controller: controlleritemcategory,
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
    
                  //labelText: 'Name',
                  hintText: 'Kannur',
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff626262))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0,top:25),
            child: Text("Receiver Phone Number",
                style: GoogleFonts.mulish(
                    color: textColor2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
            ),
            child: TextField(
              //controller: controlleritemtype,
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
                  //labelText: 'Name',
                  hintText: 'Receiver Phone Number',
                  hintStyle:
                      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Color(0xff626262))),
            ),
          ),  
           Padding(
            padding: const EdgeInsets.only(bottom: 8.0,top:25),
            child: Text("Land line Number",
                style: GoogleFonts.mulish(
                    color: textColor2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          Container(
            height: 45,
            decoration: const BoxDecoration(
              //boxShadow: [
              //   BoxShadow(
              //       offset: Offset(3, 3),
              //       color: Color.fromARGB(232, 223, 221, 221),
              //       blurRadius: 9)
              // ],
              // borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: white),
            ),
            child: TextField(
              //controller: controlleritemtype,
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
                  //labelText: 'Name',
                  hintText: 'Land line Number',
                  hintStyle:
                      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Color(0xff626262))),
            ),
          ),        
          
          
          Padding(
            padding: const EdgeInsets.only(top:50.0),
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
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddressView()));
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
                SizedBox(
                  width: 250,
                  height: 44,
                  child: OutlinedButton(
                    onPressed: (){
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
              ],
            ),
          ),  
            ],
          ),
        )
              
      ])
    );
  }
}