import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors/app_colors.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.color = AppColors.black100,
    this.alignment = Alignment.topLeft,
    this.maxLine = 1,
  });

  String text;
  double fontSize;
  FontWeight fontWeight;
  Color color;
  Alignment alignment;
  int maxLine;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        maxLines: maxLine,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
