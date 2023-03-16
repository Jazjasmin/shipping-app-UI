import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/dashboard/view/dashboard.dart';
import 'package:alfarha_cargo_app/login/view/customer_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/Ellipselt.png",
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/Ellipserb.png",
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: 120),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.height,
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Image.asset(
                      "assets/images/logo.png",
                      height: 90,
                    ),

                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding:
                              const EdgeInsets.only(left: 25, top: 88, bottom: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello Adil,",
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Wrap(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      "Greetings from Alfarha ",
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontSize: 20,
                                              color: black,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      "Cargo",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: primaryColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                              const CustomerDetails()
                            ],
                          ),
                        ),
                      ],
                    ),

                    /////////////phone

                    Padding(
                      padding:
                          const EdgeInsets.only(left: 60, right: 60, bottom: 8),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) =>  Dashboard()),
                              (Route<dynamic> route) => false);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: const Color(0xFFFC6303)),
                              color: const Color(0xFFFC6303)),
                          height: MediaQuery.of(context).size.height / 17,
                          //width: MediaQuery.of(context).size.width / 1.122,
                          child: const Center(
                            child: Text(
                              "Confirm",
                              style: TextStyle(
                                  //fontFamily: API.appfont,
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Wrap(
                      children: [
                        const Text(
                          "Wrong data?  ",
                          style: TextStyle(
                              //fontFamily: API.appfont,
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        const Text(
                          "Edit details ",
                          style: TextStyle(
                              //fontFamily: API.appfont,
                              fontSize: 14,
                              color: Color(0xFFFC6303),
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
