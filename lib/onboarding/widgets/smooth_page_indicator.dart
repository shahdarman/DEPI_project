
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils_/app_color.dart';

SmoothPageIndicator customSmoothPageIndicator ({required PageController controller,required int length}){
  return SmoothPageIndicator(
    controller: controller,
    count: length,
    axisDirection: Axis.horizontal,
    effect:WormEffect(
        spacing:8.0,
        radius:20.0,
        dotWidth:6,
        dotHeight:6,
        paintStyle:PaintingStyle.fill,
        strokeWidth:  1,
        dotColor:  AppColor.textColor,
        activeDotColor:  Colors.grey
    ),
  );
}