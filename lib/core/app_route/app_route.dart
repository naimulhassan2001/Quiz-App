import 'package:get/get.dart';

import 'package:quiz_app/view/screen/home/home_screen.dart';
import 'package:quiz_app/view/screen/quiz/quiz_screen.dart';
import 'package:quiz_app/view/screen/result/result_screen.dart';
import 'package:quiz_app/view/screen/welcome/welcome_screen.dart';

class AppRoute {


  static const String welcome = "/welcome_screen.dart";
  static const String quiz = "/quiz_screen.dart";
  static const String homeScreen = "/home_screen.dart";
  static const String result = "/result_screen.dart";





  static List<GetPage> routes = [
    GetPage(name: welcome, page: () => const WelcomeScreen()),
    GetPage(name: quiz, page: () => QuizScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: result, page: () => ResultScreen()),
  ];
}
