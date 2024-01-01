import 'dart:ui';

import 'package:get/get.dart';
import '../core/app_route/app_route.dart';
import '../utils/colors/app_colors.dart';

class QuizController extends GetxController {
  RxList quizList = [
    {
      "question": "বাংলাদেশের রাজধানী কোথায় ?",
      "optionList": [
        "Dhaka",
        "Sylhet",
        "Mymensingh",
      ],
      "rightAns": "Dhaka"
    },
    {
      "question": "জাতীয় মাছ নাম কি ?",
      "optionList": [
        "মাগুর",
        "কাতলা",
        "ইলিশ",
      ],
      "rightAns": "ইলিশ"
    },
    {
      "question": "তোমার প্রিয় ভাষা কি ?",
      "optionList": [
        "Bangla",
        "Engilsh",
        "hindi",
        "Tamil",
      ],
      "rightAns": "Engilsh"
    },
    {
      "question": "What do You do ?",
      "optionList": [
        "I’m a student.",
        "I employed in a bdcalling",
        "I intern in a bdcalling",
        "I run my own business.",
        "I’m unemployed at the moment.",
      ],
      "rightAns": "I intern in a bdcalling"
    },
    {
      "question": "কোন যন্ত্রের সাহায্যে রক্তের চাপ মাপা হয় ?",
      "optionList": [
        "ব্যারোমিটার",
        "হাইড্রোমিটার",
        "থার্মোমিটার",
        "স্ফিগমোম্যানোমিটার",
      ],
      "rightAns": "স্ফিগমোম্যানোমিটার"
    },
    {
      "question": " “বিশ্ব জনসংখ্যা দিবস” কবে পালন করা হয় ?",
      "optionList": [
        " ৯ ই আগস্ট",
        "৮ এপ্রিল",
        " ১১ জুলাই",
        "১১ সেপ্টেম্বর",
        "১১ এপ্রিল",
      ],
      "rightAns": " ১১ জুলাই"
    },
    {
      "question": "বাংলাদেশের রাজধানী কোথায় ?",
      "optionList": [
        "Dhaka",
        "Sylhet",
        "Mymensingh",
      ],
      "rightAns": "Dhaka"
    },
    {
      "question": "তোমার প্রিয় ভাষা কি ?",
      "optionList": [
        "Bangla",
        "Engilsh",
        "hindi",
        "Tamil",
      ],
      "rightAns": "Engilsh"
    },
    {
      "question": "কোন যন্ত্রের সাহায্যে রক্তের চাপ মাপা হয় ?",
      "optionList": [
        "ব্যারোমিটার",
        "হাইড্রোমিটার",
        "থার্মোমিটার",
        "স্ফিগমোম্যানোমিটার",
      ],
      "rightAns": "স্ফিগমোম্যানোমিটার"
    },
    {
      "question": "জাতীয় মাছ নাম কি ?",
      "optionList": [
        "মাগুর",
        "কাতলা",
        "ইলিশ",
      ],
      "rightAns": "ইলিশ"
    },
    {
      "question": "বাংলাদেশের রাজধানী কোথায় ?",
      "optionList": [
        "Dhaka",
        "Sylhet",
        "Mymensingh",
      ],
      "rightAns": "Dhaka"
    },
    {
      "question": "জাতীয় মাছ নাম কি ?",
      "optionList": [
        "মাগুর",
        "কাতলা",
        "ইলিশ",
      ],
      "rightAns": "ইলিশ"
    },
    {
      "question": "তোমার প্রিয় ভাষা কি ?",
      "optionList": [
        "Bangla",
        "Engilsh",
        "hindi",
        "Tamil",
      ],
      "rightAns": "Engilsh"
    },
    {
      "question": "What do You do ?",
      "optionList": [
        "I’m a student.",
        "I employed in a bdcalling",
        "I intern in a bdcalling",
        "I run my own business.",
        "I’m unemployed at the moment.",
      ],
      "rightAns": "I intern in a bdcalling"
    },
    {
      "question": "কোন যন্ত্রের সাহায্যে রক্তের চাপ মাপা হয় ?",
      "optionList": [
        "ব্যারোমিটার",
        "হাইড্রোমিটার",
        "থার্মোমিটার",
        "স্ফিগমোম্যানোমিটার",
      ],
      "rightAns": "স্ফিগমোম্যানোমিটার"
    },
    {
      "question": " “বিশ্ব জনসংখ্যা দিবস” কবে পালন করা হয় ?",
      "optionList": [
        " ৯ ই আগস্ট",
        "৮ এপ্রিল",
        " ১১ জুলাই",
        "১১ সেপ্টেম্বর",
        "১১ এপ্রিল",
      ],
      "rightAns": " ১১ জুলাই"
    },
    {
      "question": "বাংলাদেশের রাজধানী কোথায় ?",
      "optionList": [
        "Dhaka",
        "Sylhet",
        "Mymensingh",
      ],
      "rightAns": "Dhaka"
    },
    {
      "question": "তোমার প্রিয় ভাষা কি ?",
      "optionList": [
        "Bangla",
        "Engilsh",
        "hindi",
        "Tamil",
      ],
      "rightAns": "Engilsh"
    },
    {
      "question": "কোন যন্ত্রের সাহায্যে রক্তের চাপ মাপা হয় ?",
      "optionList": [
        "ব্যারোমিটার",
        "হাইড্রোমিটার",
        "থার্মোমিটার",
        "স্ফিগমোম্যানোমিটার",
      ],
      "rightAns": "স্ফিগমোম্যানোমিটার"
    },
    {
      "question": "জাতীয় মাছ নাম কি ?",
      "optionList": [
        "মাগুর",
        "কাতলা",
        "ইলিশ",
      ],
      "rightAns": "ইলিশ"
    },
  ].obs;

  RxInt questionNumber = 0.obs;

  RxInt rightAnsNumber = 0.obs;

  RxInt ansNumber = 0.obs;
  RxInt skipNumber = 0.obs;

  RxString isSelected = "".obs;
  RxString rightAns = "".obs;

  RxBool isNext = false.obs;

  Color color = AppColors.black10;

  Color rightAnsColors = AppColors.white100;

  submitButton(String selectText) {
    color = AppColors.red100;
    rightAnsColors = AppColors.green100;
    isNext.value = true;
    ansNumber.value = ansNumber.value + 1;
    if (selectText == rightAns.value) {
      color = AppColors.green100;
      rightAnsNumber.value = rightAnsNumber.value + 1;
    }
    isSelected.value = selectText;
  }

  listItemColors(String selectAns) {
    Color returnColor = AppColors.white100;

    isSelected.value == selectAns
        ? returnColor = color
        : rightAns.value == selectAns
            ? returnColor = rightAnsColors
            : returnColor = AppColors.white100;

    return returnColor;
  }

  nextQuestion() {
    color = AppColors.black10;
    isSelected = "".obs;
    rightAns = "".obs;
    isNext = false.obs;
    rightAnsColors = AppColors.white100;

    if (questionNumber.value + 1 != quizList.length) {
      questionNumber.value = questionNumber.value + 1;
    }

    if (ansNumber.value == 10) {
      Get.toNamed(AppRoute.result);
    }
  }

  skipQuestion() {
    if (questionNumber.value <= 9) {
      if (questionNumber.value + 1 != quizList.length) {
        questionNumber.value = questionNumber.value + 1;
        skipNumber.value = skipNumber.value + 1;
      }
    }
  }
}
