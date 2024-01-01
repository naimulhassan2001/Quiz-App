import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.text,
      this.height = 56,
      this.width = double.infinity,
      this.fontSize = 18,
      this.radius = 8,
      this.backGroundColor = AppColors.blue100,
      this.textColor = AppColors.white100,
      this.fontWeight = FontWeight.w600,
      required this.onTap});

  String text;
  Function() onTap;
  double height;
  double width;
  double fontSize;
  double radius;
  Color backGroundColor;
  Color textColor;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: ShapeDecoration(
          color: backGroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
