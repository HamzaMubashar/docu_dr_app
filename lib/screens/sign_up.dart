import 'package:docu_dr_app/constants.dart';
import 'package:docu_dr_app/widgets/button.dart';
import 'package:docu_dr_app/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            80.verticalSpace,
            Image.asset(
              'assets/images/logo.png',
              width: 326.w,
            ),
            50.verticalSpace,
            SizedBox(
              width: 277.w,
              child: Column(
                children: [
                  CTextField(text: 'Name', icon: Icons.person_3_outlined),
                  5.verticalSpace,
                  CTextField(text: 'Email', icon: Icons.email_outlined),
                  5.verticalSpace,
                  CTextField(text: 'Password', icon: Icons.key_rounded),
                  5.verticalSpace,
                  CTextField(text: 'Confirm Password', icon: Icons.key_rounded),
                  20.verticalSpace,
                  CButton(
                    text: 'SIGNUP',
                    onTap: () {},
                  ),
                  70.verticalSpace,
                  Text(
                    'By Creating an account\nyou agree to our',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: Constants.size12.sp,
                      color: Constants.blueColor,
                    ),
                  ),
                  3.verticalSpace,
                  Text(
                    'TERMS & CONDITIONS',
                    style: TextStyle(
                      fontSize: Constants.size20.sp,
                      color: Constants.blueColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
