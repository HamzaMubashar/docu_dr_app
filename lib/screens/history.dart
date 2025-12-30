import 'package:docu_dr_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

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
                    'History',
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
                        'CBC',
                        style: TextStyle(
                          color: Constants.blueColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '13 May 2025',
                        style: TextStyle(
                          color: Constants.blueColor,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'LET',
                        style: TextStyle(
                          color: Constants.blueColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '10 Dec 2025',
                        style: TextStyle(
                          color: Constants.blueColor,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'RFT',
                        style: TextStyle(
                          color: Constants.blueColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '21 March 2025',
                        style: TextStyle(
                          color: Constants.blueColor,
                          fontSize: 13.sp,
                        ),
                      ),
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
