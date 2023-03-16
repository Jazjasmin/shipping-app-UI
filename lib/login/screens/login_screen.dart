import 'package:alfarha_cargo_app/constant_widgets/colors/colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regexed_validator/regexed_validator.dart';
import 'package:validators/validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _errorMessage = '';
  bool validatedColor = false;
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
      final ValueNotifier<bool> _isEmailValid = ValueNotifier<bool>(false);
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/company-logo.png',
                      width: 180.w,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 60.h,
                        ),
                        Text(
                          'Log-In',
                          style: TextStyle(
                              color: darkTextColor,
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                              fontFamily: GoogleFonts.roboto().fontFamily),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Enter your mobile number to get OTP',
                          style: TextStyle(
                              color: grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: GoogleFonts.roboto().fontFamily),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              height: 50,
                              decoration: BoxDecoration(
                                  color: lightTextColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      blurRadius: 15,
                                      offset: Offset(0, 0),
                                    )
                                  ]),
                              child: Text(
                                '+91',
                                style: TextStyle(
                                  color: darkTextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoogleFonts.notoSans().fontFamily,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                height: 50,
                                decoration: BoxDecoration(
                                    color: lightTextColor,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        blurRadius: 15,
                                        offset: Offset(0, 0),
                                      )
                                    ]),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      isCollapsed: true,
                                      contentPadding: EdgeInsets.zero,
                                      isDense: true,
                                      suffixIconConstraints:
                                          const BoxConstraints(
                                              minWidth: 18, minHeight: 18),
                                      suffixIcon: validatedColor == false
                                          ? Image.asset(
                                              'assets/icons/verified-tick.png')
                                          : Image.asset(
                                              'assets/icons/verified-tick.png',
                                              color: Colors.orange,
                                            ),
                                      hintText: 'Mobile Number',
                                      hintStyle: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 14,
                                        color: grey,
                                        fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              height: 50,
                              decoration: BoxDecoration(
                                  color: lightTextColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      blurRadius: 15,
                                      offset: Offset(0, 0),
                                    )
                                  ]),
                              child: const Icon(
                                Icons.email_outlined,
                                color: darkTextColor,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                height: 50,
                                decoration: BoxDecoration(
                                    color: lightTextColor,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        blurRadius: 15,
                                        offset: Offset(0, 0),
                                      )
                                    ]),
                                child:  ValueListenableBuilder<bool>(
                                  valueListenable:_isEmailValid ,
                                  builder: (context,value,child) {
                                    return TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      controller: emailController,
                                      onChanged: (val) {
                                        if(isEmail(val))
                                       
                                         _isEmailValid.value = true;
                                     
                                        else  
                                          _isEmailValid.value = false;
                                       
                                      },
                                      // onChanged: (val) {
                                
                                      //     validatedColor = validator.email(val);
                                
                                      // },
                                      //onEditingComplete: ,
                                      // onFieldSubmitted: (value){
                                      //  if (validator.email(value)) {
                                      //     print('hi');
                                      //     setState(() {
                                      //       validatedColor = false;
                                      //     });
                                      //   } else {
                                      //     print('hoo');
                                      //    setState(() {
                                      //       validatedColor = true;
                                      //    });
                                      //   }
                                      // },
                                
                                      validator: (value) {
                                        if (value == null ||
                                            !validator.email(value)) {
                                          Get.snackbar(
                                            "Oops",
                                            "Enter valid email ",
                                            icon: Icon(Icons.error,
                                                color: primaryColor),
                                            snackPosition: SnackPosition.BOTTOM,
                                          );
                                        } else {
                                           Navigator.of(context).pushNamed(NavRoute.otpScreen);
                                        }
                                      },
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          isCollapsed: true,
                                          contentPadding: EdgeInsets.zero,
                                          isDense: true,
                                          suffixIconConstraints:
                                              const BoxConstraints(
                                                  minWidth: 18, minHeight: 18),
                                          suffixIcon: _isEmailValid.value == false
                                              ? Image.asset(
                                                  'assets/icons/verified-tick.png')
                                              : Image.asset(
                                                  'assets/icons/verified-tick.png',
                                                  color: Colors.orange,
                                                ),
                                          hintText: 'Email',
                                          hintStyle: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 14,
                                            color: grey,
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
                                          )),
                                    );
                                  }
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          
                        } else {
                         
                        }
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          padding: EdgeInsets.symmetric(
                              vertical: 13.h, horizontal: 80.h),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: Text(
                        'Send OTP',
                        style: TextStyle(
                          color: lightTextColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          fontFamily: GoogleFonts.notoSans().fontFamily,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
