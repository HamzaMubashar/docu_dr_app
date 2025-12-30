import 'package:docu_dr_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CButton extends StatelessWidget {
  final String text;
  final double? height;
  final VoidCallback onTap;
  const CButton(
      {super.key, required this.text, required this.onTap, this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: height ?? 47.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Constants.redColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Constants.whiteColor,
            fontSize: Constants.size15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
