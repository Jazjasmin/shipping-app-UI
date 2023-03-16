import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ScaffoldScreen extends StatelessWidget {
  Color backgroundColor;
  String appbarTitle;
  Widget widget;
  final List<Widget>? actionButton;
  final VoidCallback? back;

   ScaffoldScreen({super.key,required this.backgroundColor,this.actionButton, this.back,required this.appbarTitle,required this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       appBar:AppBar(
      elevation: 0,
      backgroundColor: custom_orange,
      leading: IconButton(
        icon: Icon(
          CupertinoIcons.arrow_left,
          color: Colors.white,
          size: 35.sp,
        ),
        onPressed: back ??
            () {
          //back;
              Get.back();
            },
      ),
      title: Text(
        appbarTitle.tr,
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.w500,
          fontSize: 22.sp,
          color: Colors.white,
        ),
      ),
      actions: actionButton,
    ),
    body: widget,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(58.h);
       
  }
