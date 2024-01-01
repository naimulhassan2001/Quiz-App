import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/utils/string/app_strings.dart';
import 'package:quiz_app/view/screen/quiz/inner_widget/question.dart';

import '../../../controller/quiz_controller.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({super.key});

  QuizController quizController = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.appName),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          child: Column(
            children: [

              Obx(() => Question(
                question: quizController.quizList[quizController.questionNumber.value]["question"],
                optionList: quizController.quizList[quizController.questionNumber.value]["optionList"],
                rightAns: quizController.quizList[quizController.questionNumber.value]["rightAns"],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
