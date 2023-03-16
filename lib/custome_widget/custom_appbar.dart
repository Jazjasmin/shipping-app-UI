import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar(
      {Key? key, required this.title, this.actionButton, this.back})
      : super(key: key);

  final String title;
  final List<Widget>? actionButton;
  final VoidCallback? back;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: primaryColor,
      leading: IconButton(
        icon: Icon(
          CupertinoIcons.arrow_left,
          color: Colors.white,
          size: 30.sp,
        ),
        onPressed: back ??
            () {
          //back;
              Get.back();
            },
      ),
      title: Text(
        title.tr,
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          color: Colors.white,
        ),
      ),
      actions: actionButton,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(58.h);
}
