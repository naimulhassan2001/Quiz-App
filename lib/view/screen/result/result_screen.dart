import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controller/quiz_controller.dart';
import 'package:quiz_app/utils/string/app_strings.dart';

import '../../widget/Text/custom_text.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});

  QuizController quizController = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.result),
      ),
      body: Column(
        children: [
          Obx(
            () => CustomText(
              text: quizController.ansNumber.value.toString(),
              alignment: Alignment.center,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Obx(
            () => CustomText(
              text:
                  "${quizController.questionNumber.value } / ${quizController.rightAnsNumber.value}",
              alignment: Alignment.center,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
