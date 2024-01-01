import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/app_route/app_route.dart';
import 'package:quiz_app/utils/string/app_strings.dart';
import 'package:quiz_app/view/widget/Text/custom_text.dart';
import 'package:quiz_app/view/widget/button/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: AppString.appName,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomButton(
              text: AppString.startNow,
              onTap: () {
                Get.toNamed(AppRoute.quiz);
              },
              width: 120.w,
              height: 30.h,
            )
          ],
        ),
      ),
    );
  }
}
