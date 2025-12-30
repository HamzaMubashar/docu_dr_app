import 'package:docu_dr_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CTextField extends StatelessWidget {
  final String text;
  final IconData icon;
  const CTextField({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [BoxShadow(blurRadius: 5.r, color: Colors.grey.shade400)],
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            size: 17.sp,
            color: Constants.blueColor,
          ),
          hintText: text,
          hintStyle: TextStyle(
            fontSize: Constants.size13.sp,
            height: 2.2.h,
            color: Constants.blueColor,
          ),
          filled: true,
          fillColor: Constants.whiteColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
