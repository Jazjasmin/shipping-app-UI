import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/routes.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:alfarha_cargo_app/notification/view/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String appVersion = '1.00';

  @override
  void initState() {
    //getAppVersion();
    super.initState();
  }

  // getAppVersion()async{
  //   appVersion =await storage.read(key: "app_version")??"";
  //   setState((){});
  // }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return ScaffoldScreen(
      backgroundColor: custom_white,
      appbarTitle: "Settings",
      widget: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width: w,
              padding: EdgeInsets.all(15),
              child: Text(
                "Notification Settings",
                style: GoogleFonts.mulish(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff59597C),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: InkWell(
                onTap: () {
                  Get.to(() => NotificationScreen());
                },
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/notification.svg",
                      color: Color(0xff969696),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Notification',
                        style: GoogleFonts.mulish(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff474747),
                        ),
                      ),
                    ),
                    Spacer(),
                    Transform.scale(
                      scale: 1,
                      child: Switch(
                          value: true,
                          activeColor: custom_orange,
                          onChanged: (v) async {
                            // SharedPreferences pref =
                            // await SharedPreferences.getInstance();

                            setState(() {
                              // isNotifcationOn = v;
                            });
                            if (v == true) {
                              // pref.setString("notification", "on");
                              // await storage.write(
                              //     key: "notification", value: "on");
                              print("on");
                            } else if (v == false) {
                              // pref.setString("notification", "off");
                              // await storage.write(
                              //     key: "notification", value: "off");
                              print("off");
                            }
                          }),
                    ),
                    // Consumer<SettingsProvider>(
                    //   builder: (context,p,c) {
                    //     return Switch(
                    //         value: p.notificationValue,
                    //         activeColor: Color(0xFF5AD2FF),
                    //         // inactiveTrackColor: Color(0xFFC3EFFF),
                    //         activeTrackColor: Color(0xFFC3EFFF),
                    //         onChanged: (v)  {
                    //           if (v == true) {
                    //             // pref.setString("notification", "on");
                    //           p.notificationOnOFF(true);
                    //             print("on");
                    //           } else if (v == false) {
                    //             p.notificationOnOFF(false);
                    //             print("off");

                    //           }
                    //         });
                    //   }
                    // )
                  ],
                ),
              ),
            ),
            Container(
              width: w,
              padding: EdgeInsets.all(15),
              child: Text(
                "App Settings",
                style: GoogleFonts.mulish(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff59597C),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/svg/update.svg",
                  color: Color(0xff969696),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Update',
                    style: GoogleFonts.mulish(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff474747),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: 106,
                  height: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // color: Colors.black38
                      border: Border.all(color: Color(0xff747474), width: 1)),
                  alignment: Alignment.center,
                  child: Text("Version $appVersion",
                      style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF747474))),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 1,
              color: Color(0xff969696),
              thickness: 0.5,
            ),
            SizedBox(
              height: 65,
              child: InkWell(
                onTap: () {},
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/review.svg",
                      color: Color(0xff969696),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Review',
                        style: GoogleFonts.mulish(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff474747),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 1,
              color: Color(0xff969696),
              thickness: 0.5,
            ),
            SizedBox(
              height: 70,
              child: InkWell(
                onTap: () {
                  showAlertDialog(
                      context,
                      'Sign Out'.tr,
                      'Are you sure you want to  \n \t sign out ?',
                      'Sign Out'.tr,
                      'Cancel'.tr, () {
                    // userdata.write('isLogged', false);
                    //userdata.remove('customerId');

                    Get.offAllNamed(NavRoute.loginScreen);
                  });
                },
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/logout.svg",
                      color: Color(0xff969696),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Log Out',
                        style: GoogleFonts.mulish(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff474747),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context, String alertTitle, String alertMessage,
      continueMsg, dismissMsg, VoidCallback? onPressed) {
    // set up the buttons
    int selectedIndex = 0;

    Widget continueButton = SizedBox(
      height: 40,
      width: 125,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: custom_orange,
          side: const BorderSide(
            color: custom_orange,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: onPressed,
        child: Center(
            child: Text(continueMsg,
                textAlign: TextAlign.center,
                style: GoogleFonts.mulish(color: Colors.white))),
      ),
    );
    Widget cancelButton = SizedBox(
      height: 40,
      width: 125,
      child: ElevatedButton(
          child: Text(
            dismissMsg,
            textAlign: TextAlign.center,
            style: GoogleFonts.mulish(color: custom_orange),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFFFFF),
            side: const BorderSide(
              color: custom_orange,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          )),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(
          child: Text(alertTitle,
              style: GoogleFonts.mulish(
                  color: custom_orange, fontWeight: FontWeight.w800))),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(alertMessage,
                textAlign: TextAlign.center,
                style: GoogleFonts.mulish(
                  color: const Color(0xff8A8A8A),
                ))
          ],
        ),
      ),
      actions: [
        continueButton,
        cancelButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
