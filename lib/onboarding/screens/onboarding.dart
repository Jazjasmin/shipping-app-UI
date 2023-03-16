

import 'package:alfarha_cargo_app/constant_widgets/colors/colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/font_style.dart';
import 'package:alfarha_cargo_app/constant_widgets/routes.dart';
import 'package:alfarha_cargo_app/dashboard/view/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});

  ValueNotifier<int> slidePosition = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, child) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: slidePosition.value == 0
                ? [bgTeal, lightTextColor]
                : slidePosition.value == 1
                    ? [bgGrey, lightTextColor]
                    : [bgBlue, lightTextColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 20),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          slidePosition.value != 2
                              ? InkWell(
                                  onTap: () {
                                   // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Dashboard()));
                                    Navigator.pushNamed(
                                        context, NavRoute.loginScreen);
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Skip',
                                        style: TextStyle(
                                            color: grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      Image.asset(
                                        'assets/icons/skip.png',
                                        width: 12,
                                      )
                                    ],
                                  ),
                                )
                              : const SizedBox.shrink()
                        ],
                      ),
                    ),
                    Expanded(
                        child: PageView(
                      onPageChanged: (position) {
                        slidePosition.value = position;
                      },
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/onboarding1.png',
                              height: 270,
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                'Smooth And Fast Like\nNever Before',
                                style: onboardingTitle,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/onboarding2.png',
                              height: 270,
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                "World’s Best International\nExpress Aggregator Delivering\nTo 220+ Global Destination",
                                style: onboardingTitle,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/onboarding3.png',
                              height: 270,
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                "Simple, Easy And Safest Place\nTo Sent Your Parcels",
                                style: onboardingTitle,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                    SizedBox(
                        height: slidePosition.value == 2 ? 100 : 50,
                        child: slidePosition.value != 2
                            ? DotsIndicator(
                                dotsCount: 3,
                                position: slidePosition.value * 1.0,
                                decorator: const DotsDecorator(
                                    color: primaryColorLight),
                              )
                            : CircleAvatar(
                                backgroundColor: primaryColor,
                                radius: 25,
                                child: IconButton(
                                  padding: const EdgeInsets.only(left: 2),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, NavRoute.loginScreen);
                                  },
                                  icon: const Icon(Icons.arrow_forward_ios),
                                  color: lightTextColor,
                                ),
                              ))
                  ],
                ),
              ))),
        );
      },
      valueListenable: slidePosition,
    );
  }
}
