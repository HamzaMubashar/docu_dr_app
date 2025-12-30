import 'package:docu_dr_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Constants.blueColor,
                    size: 15.sp,
                  ),
                  5.horizontalSpace,
                  Text(
                    'Back',
                    style: TextStyle(
                      fontSize: Constants.size13,
                      color: Constants.blueColor,
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 294.w,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: Constants.size27.sp,
                        color: Constants.blueColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              50.horizontalSpace,
            ],
          ),
          20.verticalSpace,
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.h),
              color: Constants.whiteColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Constants.blueColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.launch_rounded,
                        size: 20.sp,
                        color: Constants.blueColor,
                      )
                    ],
                  ),
                  Divider(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: Constants.blueColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.launch_rounded,
                        size: 20.sp,
                        color: Constants.blueColor,
                      )
                    ],
                  ),
                  Divider(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FAQ’s',
                        style: TextStyle(
                          color: Constants.blueColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.launch_rounded,
                        size: 20.sp,
                        color: Constants.blueColor,
                      )
                    ],
                  ),
                  Divider(
                    height: 30.h,
                  ),
                  Expanded(child: Container()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Logout',
                        style: TextStyle(
                          color: Constants.blueColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.logout_rounded,
                        size: 20.sp,
                        color: Constants.blueColor,
                      )
                    ],
                  ),
                  Divider(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delete Account',
                        style: TextStyle(
                          color: Constants.blueColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.delete_outline_rounded,
                        size: 20.sp,
                        color: Constants.blueColor,
                      )
                    ],
                  ),
                  Divider(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
