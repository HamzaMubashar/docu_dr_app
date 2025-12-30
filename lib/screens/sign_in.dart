import 'package:docu_dr_app/constants.dart';
import 'package:docu_dr_app/screens/home.dart';
import 'package:docu_dr_app/screens/sign_up.dart';
import 'package:docu_dr_app/widgets/button.dart';
import 'package:docu_dr_app/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
            80.verticalSpace,
            SizedBox(
              width: 277.w,
              child: Column(
                children: [
                  CTextField(text: 'Email', icon: Icons.email_outlined),
                  5.verticalSpace,
                  CTextField(text: 'Password', icon: Icons.key_rounded),
                  5.verticalSpace,
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: Constants.size12.sp,
                      color: Constants.blueColor,
                    ),
                  ),
                  20.verticalSpace,
                  CButton(
                    text: 'LOGIN',
                    onTap: () => Get.off(() => HomeScreen()),
                  ),
                  15.verticalSpace,
                  Text(
                    'Continue as guest',
                    style: TextStyle(
                      fontSize: Constants.size12.sp,
                      color: Constants.blueColor,
                    ),
                  ),
                  70.verticalSpace,
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => Get.to(() => SignUpScreen()),
                    child: Column(
                      children: [
                        Text(
                          'Don’t have account?',
                          style: TextStyle(
                            fontSize: Constants.size12.sp,
                            color: Constants.blueColor,
                          ),
                        ),
                        Text(
                          'CREATE NEW',
                          style: TextStyle(
                            fontSize: Constants.size20.sp,
                            color: Constants.blueColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
