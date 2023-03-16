import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerDetails extends StatefulWidget {
  const CustomerDetails({super.key});

  @override
  State<CustomerDetails> createState() => _CustomerDetailsState();
}

class _CustomerDetailsState extends State<CustomerDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 60),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3.0, bottom: 8),
                child: Text(
                  "Name",
                  style: GoogleFonts.mulish(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: textColor2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0, bottom: 8),
                child: Text(
                  "Mobile",
                  style: GoogleFonts.mulish(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: textColor2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0, bottom: 8),
                child: Text(
                  "Country",
                  style: GoogleFonts.mulish(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: textColor2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0, bottom: 8),
                child: Text(
                  "Designation",
                  style: GoogleFonts.mulish(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: textColor2),
                ),
              )
            ],
          ),

          ///2nd
          Container(
            padding: EdgeInsets.only(left: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 3.0, bottom: 8),
                    child: Text(
                      "Adil Suhail",
                      style: GoogleFonts.mulish(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: textColor2),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, bottom: 8),
                  child: Text(
                    "987654321",
                    style: GoogleFonts.mulish(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: textColor2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, bottom: 8),
                  child: Text(
                    "India",
                    style: GoogleFonts.mulish(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: textColor2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, bottom: 8),
                  child: Text(
                    "Delivery Boy",
                    style: GoogleFonts.mulish(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: textColor2),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
