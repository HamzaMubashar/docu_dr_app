import 'package:docu_dr_app/constants.dart';
import 'package:docu_dr_app/screens/history.dart';
import 'package:docu_dr_app/screens/settings.dart';
import 'package:docu_dr_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showPopup = false;

  final List<String> list = [
    'Hb',
    'WBC',
    'RBC',
    'HCT',
    'MCV',
    'MCH',
    'MCHC',
    'Platelet Count',
    'Neutrophils',
    'Lymphocytes',
    'Monocytes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => HistoryScreen());
                  },
                  child: Column(
                    children: [
                      50.verticalSpace,
                      Icon(
                        Icons.history,
                        color: Constants.blueColor,
                        size: 30.sp,
                      ),
                      Text(
                        'History',
                        style: TextStyle(
                          fontSize: Constants.size10.sp,
                          color: Constants.blueColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 294.w,
                    ),
                    Text(
                      'Understand your health\ninstantly',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: Constants.size27.sp,
                          color: Constants.blueColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Get.to(() => SettingsScreen());
                  },
                  child: Column(
                    children: [
                      50.verticalSpace,
                      Icon(
                        Icons.settings,
                        color: Constants.blueColor,
                        size: 30.sp,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: Constants.size10.sp,
                          color: Constants.blueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            5.verticalSpace,
            Text(
              'Upload your lab results. Let AI explain what\nit means — in plain English',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Constants.size15.sp,
                color: Constants.blueColor,
              ),
            ),
            20.verticalSpace,
            SizedBox(
              width: 137.w,
              child: CButton(
                height: 42.h,
                text: 'Try it free',
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Constants.creamColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(47.r))),
                      context: context,
                      builder: (_) {
                        return Container(
                          width: 430.w,
                          height: 311.h,
                          padding: EdgeInsets.symmetric(vertical: 25.h),
                          child: Column(
                            children: [
                              Text(
                                'UPLOAD REPORT',
                                style: TextStyle(
                                  fontSize: Constants.size15.sp,
                                  color: Constants.blueColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              30.verticalSpace,
                              Container(
                                height: 47.h,
                                width: 277.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Constants.redColor,
                                ),
                                child: Row(
                                  children: [
                                    20.horizontalSpace,
                                    Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.white,
                                      size: 20.sp,
                                    ),
                                    10.horizontalSpace,
                                    Text(
                                      'Take picture from camera',
                                      style: TextStyle(
                                        fontSize: Constants.size13.sp,
                                        color: Constants.whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              5.verticalSpace,
                              Container(
                                height: 47.h,
                                width: 277.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Constants.redColor,
                                ),
                                child: Row(
                                  children: [
                                    20.horizontalSpace,
                                    Icon(
                                      Icons.photo_outlined,
                                      color: Colors.white,
                                      size: 20.sp,
                                    ),
                                    10.horizontalSpace,
                                    Text(
                                      'Upload from Photos',
                                      style: TextStyle(
                                        fontSize: Constants.size13.sp,
                                        color: Constants.whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              5.verticalSpace,
                              Container(
                                height: 47.h,
                                width: 277.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Constants.redColor,
                                ),
                                child: Row(
                                  children: [
                                    20.horizontalSpace,
                                    Icon(
                                      Icons.upload_file,
                                      color: Colors.white,
                                      size: 20.sp,
                                    ),
                                    10.horizontalSpace,
                                    Text(
                                      'Upload from Files',
                                      style: TextStyle(
                                        fontSize: Constants.size13.sp,
                                        color: Constants.whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
              ),
            ),
            10.verticalSpace,
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 255, 254, 244),
                child: Column(
                  children: [
                    15.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/file.png',
                              height: 35.h,
                            ),
                            10.verticalSpace,
                            Text(
                              'Upload Your\nLab Report',
                              style: TextStyle(
                                fontSize: Constants.size15.sp,
                                color: Constants.blueColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80.h,
                          child: VerticalDivider(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/ai.png',
                              height: 35.h,
                            ),
                            10.verticalSpace,
                            Text(
                              'AI Explains\nIt Clearly',
                              style: TextStyle(
                                fontSize: Constants.size15.sp,
                                color: Constants.blueColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80.h,
                          child: VerticalDivider(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/stethoscope.png',
                              height: 35.h,
                            ),
                            10.verticalSpace,
                            Text(
                              'Ask Questions\nAt Next Visit',
                              style: TextStyle(
                                fontSize: Constants.size15.sp,
                                color: Constants.blueColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 324.h,
                          width: 200.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          decoration: BoxDecoration(
                              color: Constants.whiteColor,
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.r,
                                  color: Colors.grey.shade400,
                                )
                              ]),
                          child: Column(
                            children: [
                              Text(
                                'Laboratory Report',
                                style: TextStyle(
                                  fontSize: Constants.size13.sp,
                                  color: Constants.blueColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(
                                height: 12.h,
                              ),
                              ListView.separated(
                                shrinkWrap: true,
                                itemCount: 11,
                                separatorBuilder: (ctx, i) {
                                  return Divider(
                                    height: 9.h,
                                  );
                                },
                                itemBuilder: (ctx, i) {
                                  return GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () {
                                      showPopup = !showPopup;
                                      setState(() {});
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          list[i],
                                          style: TextStyle(
                                            fontSize: Constants.size13.sp,
                                            color: Constants.blueColor,
                                          ),
                                        ),
                                        Text(
                                          '753',
                                          style: TextStyle(
                                            fontSize: Constants.size13.sp,
                                            color: Constants.blueColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        AnimatedScale(
                          scale: showPopup ? 1 : 0,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeOutBack,
                          child: AnimatedOpacity(
                            opacity: showPopup ? 1 : 0,
                            duration: Duration(milliseconds: 200),
                            child: Container(
                              height: 261.h,
                              width: 160.w,
                              padding: EdgeInsets.all(10.w),
                              decoration: BoxDecoration(
                                  color: Color(0xffEFF7F6),
                                  borderRadius: BorderRadius.circular(12.r),
                                  border:
                                      Border.all(color: Constants.blueColor)),
                              child: Column(
                                children: [
                                  Text(
                                    'Hemoglobin (Hb)',
                                    style: TextStyle(
                                      fontSize: Constants.size13.sp,
                                      color: Constants.blueColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  10.verticalSpace,
                                  Text(
                                    '- Your value of 14 g/dL is within the normal range.\n- It suggests your red blood cell count and oxygen-carrying capacity are healthy.\n- No signs of anemia or excessive red blood cells based on this value alone.',
                                    style: TextStyle(
                                      fontSize: Constants.size13.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    10.verticalSpace,
                    Text(
                      'From confused to confident — in seconds.',
                      style: TextStyle(
                        fontSize: Constants.size15.sp,
                        color: Constants.blueColor,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
