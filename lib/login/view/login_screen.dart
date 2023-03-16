// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_import

import 'package:alfarha_cargo_app/bottom_navigation/view/bottom-nav.dart';
import 'package:alfarha_cargo_app/dashboard/view/dashboard.dart';
import 'package:alfarha_cargo_app/login/controller/login_conroller.dart';
import 'package:alfarha_cargo_app/login/model/model.dart';
import 'package:alfarha_cargo_app/welcom_screen/view/welcome_screen.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  bool load = false;
  final formkey = GlobalKey<FormState>();
  final TextEditingController unameController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
//   String? validateMobile(String value) {
// // Indian Mobile number are of 10 digit only
//     if (value.length != 10)
//       return 'Mobile Number must be of 10 digit';
//     else
//       return null;
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF5F5F5),
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
          Positioned(
            top: 170,
            right: 0,
            left: 0,
            child: Image.asset(
              "assets/images/logo.png",
              height: 90,
            ),
          ),
          Positioned(
            top: 300,
            right: 0,
            left: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Welcome!",
                    style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(fontSize: 46, fontWeight: FontWeight.w700),
                    )),
                   
                Text(
                  "Enter your user name and Password",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                )
              ],
            ),
          ),
         //SizedBox(height: 20,),
          Positioned(
            bottom: 70,
            right: 0,
            left: 0,
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: 85, bottom: 18, left: 25, right: 25),
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      // keyboardType: TextInputType.phone,
                      controller: unameController,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        suffixIcon: Icon(
                          Icons.check_circle_outline_rounded,
                          color: Colors.grey,
                        ),
                        // prefixIcon: Image.asset('assets/searchIcon@2x.png'),
                        hintText: "Username",
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: 18, left: 25, right: 25, bottom: 85),
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      obscureText: _isObscure,
                      controller: pwdController,
                      // validator: (email) => !EmailValidator.validate(email!)
                      //     ? 'Enter a valid email'
                      //     : null,
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: [AutofillHints.email],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            }),
                        // prefixIcon: Image.asset('assets/searchIcon@2x.png'),
                        hintText: "Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, right: 60, bottom: 8),
                    child: InkWell(
                      onTap: (() async {
                        setState(() {
                          load = true;
                        });
                        print("--------------button click------------------");
                        final LoginModel login = await APIService.apiLogin(
                            unameController.text, pwdController.text, "", "");
                        if (login.status == 200) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottamNavigation()));
                        } else {
                          setState(() {
                            load = false;
                          });
                        }
                        //  Navigator.pushReplacement(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => WelcomeScreen()));
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Color(0xFFFC6303)),
                            color: Color(0xFFFC6303)),
                        height: MediaQuery.of(context).size.height / 17,
                        //width: MediaQuery.of(context).size.width / 1.122,
                        child: Center(
                          child: Text(
                            "Login",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    //fontFamily: API.appfont,
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Forgot Password?",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                //fontFamily: API.appfont,
                                fontSize: 14,
                                color: custom_black,
                                fontWeight: FontWeight.w700)),
                      ),
                      Text(
                        "Click Here",
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
        ],
      ),
    );
  }
}
