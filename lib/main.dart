import 'package:docu_dr_app/constants.dart';
import 'package:docu_dr_app/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'DocuDr',
          theme: ThemeData(
            fontFamily: 'Poppins',
            scaffoldBackgroundColor: Constants.creamColor,
          ),
          home: child,
        );
      },
      child: const SplashScreen(),
    );
  }
}
