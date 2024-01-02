import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controller/quiz_controller.dart';
import 'package:quiz_app/utils/colors/app_colors.dart';
import 'package:quiz_app/view/widget/Text/custom_text.dart';
import 'package:quiz_app/view/widget/button/custom_button.dart';

import '../../../../utils/string/app_strings.dart';

class Question extends StatelessWidget {
  Question({
    super.key,
    required this.question,
    required this.optionList,
    required this.rightAns,
  });

  String question;
  String rightAns;
  List optionList;

  QuizController quizController = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    quizController.rightAns.value = rightAns;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            color: AppColors.white100,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: const [
              BoxShadow(
                color: AppColors.black100,
                blurRadius: 4,
                offset: Offset(0, 4), // Shadow position
              ),
            ],
          ),
          child: CustomText(
            text: question,
            alignment: Alignment.center,
            fontSize: 20.sp,
            maxLine: 10,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Container(
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            color: AppColors.white100,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: const [
              BoxShadow(
                color: AppColors.black80,
                blurRadius: 4,
                offset: Offset(0, 4), // Shadow position
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text:
                            "${quizController.questionNumber.value.ceil() + 1} / ${quizController.skipNumber.value.ceil()}",
                        alignment: Alignment.topLeft,
                      ),
                      CustomText(
                        text:
                            "${quizController.ansNumber.value.ceil() } / ${quizController.rightAnsNumber.value.ceil()}",
                        alignment: Alignment.topRight,
                      ),
                    ],
                  )),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: optionList.length,
                itemBuilder: (context, index) {
                  return Obx(() => GestureDetector(
                        onTap: quizController.isNext.value
                            ? () {}
                            : () =>
                                quizController.selectItem(optionList[index]),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 4.h),
                          decoration: BoxDecoration(
                            color: quizController
                                .listItemColors(optionList[index]),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: CustomText(
                            text: " ${index + 1}. ${optionList[index]}",
                            fontSize: 14.sp,
                            maxLine: 10,
                          ),
                        ),
                      ));
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: Center(
                    child: Obx(() => CustomButton(
                          text: quizController.isNext.value
                              ? AppString.next
                              : AppString.skip,
                          onTap: quizController.isNext.value
                              ? () => quizController.nextButton()
                              : () => quizController.skipButton(),
                          height: 30.h,
                          width: 100.w,
                        )),
                  )),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
