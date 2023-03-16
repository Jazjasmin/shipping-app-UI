import 'package:alfarha_cargo_app/constant_widgets/colors/colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/routes.dart';
import 'package:alfarha_cargo_app/dashboard/view/dashboard.dart';
import 'package:alfarha_cargo_app/login/screens/login_screen.dart';
import 'package:alfarha_cargo_app/login/screens/otp_screen.dart';
import 'package:alfarha_cargo_app/login/screens/permission_screen.dart';
import 'package:alfarha_cargo_app/my_order/view/my_order.dart';
import 'package:alfarha_cargo_app/onboarding/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await Future.delayed(Duration(seconds: 3));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Alfarha Cargo',
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              primarySwatch: primaryTheme,
              fontFamily: GoogleFonts.mulish().fontFamily,
            ),
            routes: {
              NavRoute.loginScreen: (context) => LoginScreen(),
              NavRoute.otpScreen: (context) => OTPScreen(),
              NavRoute.permissionScreen: (context) => PermissionScreen(),
              NavRoute.dashboard: (context) => Dashboard(),
              NavRoute.orders: (context) => MyOrder(),
            },
            home: Onboarding(),
          );
        });
  }
}
