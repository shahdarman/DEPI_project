import 'dart:ui';

import 'package:collaboration_list/utils_/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;
  final Color? buttonColor;
  final double width ;
  final double height;

  const CustomButton({
    super.key ,
    required this.onTap
    ,required this.buttonText,
    this.buttonColor,
    required this.width,
    required this.height});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color:buttonColor?? AppColor.maincolor
          ),
          child: Center(
            child: Text(
              buttonText!,
              style: TextStyle(
                color: AppColor.textColor,
                fontSize: 20,
              ),
            ),
          ),
        )

    );


  }
}