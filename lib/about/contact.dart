import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
     Future<void> launchURL(Uri url) async {
    await canLaunchUrl(url)
     ? await launchUrl(url)   
      :throw "could not launch $url";    
  }
    return ScaffoldScreen(
      backgroundColor: custom_white, 
      appbarTitle: "Contact Us", 
      widget: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          Text("We love to hear from You",
          style: GoogleFonts.mulish(
              fontSize: 18,
              fontWeight: FontWeight.w700,color: Color(0xff59597C)
          ),),
          SizedBox(
              width: 371,
          height: 84,
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: GoogleFonts.mulish(
              fontSize: 12,
              fontWeight: FontWeight.w400,color: Color(0xff59597C)
          ))),
          const SizedBox(
              height: 15,
          ),
          
          
          Row(
              children: [
                Image.asset(
                  "assets/images/contact_phone.png",
                  width: 20,
                  height: 20,
                  color: Color(0xff252525),
                ),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  "+968 23 291012",
                  style: GoogleFonts.mulish(
                      color: Color(0xff252525),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              ],
          ),
          const SizedBox(
              height: 5,
          ),
          Row(
              children: [
                Image.asset(
                  "assets/images/contact_email.png",
                  width: 20,
                  height: 20,
                  color: Color(0xff252525),),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  "alfarhacargo@gmail.com",
                  style: GoogleFonts.mulish(
                      color: Color(0xff252525),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              ],
          ),
          const SizedBox(
              height: 5,
          ),
          Row(
              children: [
                Image.asset(
                  "assets/images/contact_location.png",
                  width: 20,
                  height: 20,
                  color: Color(0xff252525),
                ),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  "An Nahdah St, Salalah, Oman",
                  style: GoogleFonts.mulish(
                      color: Color(0xff252525),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              ],
          ),
          Spacer(),
          Container(
              height: 172,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/contact_us.png"),
                filterQuality: FilterQuality.high,
                fit:BoxFit.cover)
              ),
          )
        ]),
            )));
  }
}
