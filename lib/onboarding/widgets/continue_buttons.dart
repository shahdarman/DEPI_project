import 'package:collaboration_list/onboarding/widgets/smooth_page_indicator.dart';
import 'package:collaboration_list/screens/login/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../utils_/app_color.dart';
import '../../utils_/app_strings.dart';
import '../../utils_/local_data_helper/cache_helper.dart';
import '../../utils_/local_data_helper/local_data_keys.dart';
import '../../utils_/navigation/navigation.dart';
import '../../utils_/widgets/custom_text_button.dart';

class ContinueButtons extends StatelessWidget {
  const ContinueButtons({
    super.key,
    required this.pageController,
    required this.isLast,
    required this.screensLength,
  });

  final PageController pageController;
  final bool isLast;

  final int screensLength;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customSmoothPageIndicator(
            controller: pageController,
            length: screensLength,
          ),
          SizedBox(height: 10,),
          Center(
            child: ElevatedButton(
              onPressed: () {
                if (isLast) {
                  PushNavigation().navigation(
                    context: context,
                    screen: LoginScreen(),
                  );
                  CacheHelper.setBoolData(
                    key: LocalDataKeys.onboarding,
                    value: true,
                  );
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.fastOutSlowIn,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                shadowColor: AppColor.textColor,
                backgroundColor: AppColor.maincolor.withOpacity(0.6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: EdgeInsets.symmetric(horizontal: 120 , vertical: 10)
              ),
              child: Text(
                AppStrings.conntinue,
                style: TextStyle(
                  color: AppColor.textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ],

    );
  }
}
