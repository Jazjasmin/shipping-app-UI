import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DeliveryStageIcon extends StatelessWidget {
  const DeliveryStageIcon({
    Key? key,
    required this.bgColor,
    required this.iconPath,
    required this.width,
  }) : super(key: key);

  final Color bgColor;
  final String iconPath;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: bgColor,
      maxRadius: 16.w,
      child: Image.asset(
        iconPath,
        width: width.w,
      ),
    );
  }
}
