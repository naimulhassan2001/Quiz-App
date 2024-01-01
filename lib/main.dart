import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/app_route/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.noTransition,
          transitionDuration: const Duration(milliseconds: 200),
          initialRoute: AppRoute.welcome,
          navigatorKey: Get.key,
          getPages: AppRoute.routes,
        );
      },
    );
  }
}
