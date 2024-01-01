import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:quiz_app/controller/quiz_controller.dart';
import 'package:quiz_app/utils/string/app_strings.dart';
import '../../widget/Text/custom_text.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});

  QuizController quizController = Get.put(QuizController());



  @override
  Widget build(BuildContext context) {

    Map<String, double> dataMap = {
      "right": quizController.rightAnsNumber.value,
      "skip": quizController.skipNumber.value,
      "wrong": 10- quizController.rightAnsNumber.value,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.result),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          children: [
            Obx(
              () => CustomText(
                text:
                    "Total mark: ${quizController.ansNumber.value.ceil()}",
                alignment: Alignment.center,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8.h,),

            Obx(
              () => CustomText(
                text:
                    "Right Ans: ${quizController.rightAnsNumber.value.ceil()}",
                alignment: Alignment.center,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8.h,),
            Obx(
              () => CustomText(
                text:
                    "Total Skip: ${quizController.skipNumber.value.ceil()}",
                alignment: Alignment.center,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16.h,),

            Center(
              child: PieChart(
                dataMap: dataMap,
                chartRadius: 200.r,
                legendOptions:
                    const LegendOptions(legendPosition: LegendPosition.bottom),
                chartValuesOptions:
                    const ChartValuesOptions(
                      showChartValues: true,

                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
