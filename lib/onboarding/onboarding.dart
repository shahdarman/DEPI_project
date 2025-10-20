import 'package:collaboration_list/onboarding/widgets/continue_buttons.dart';
import 'package:collaboration_list/onboarding/widgets/onboarding_tittle_and_subtittle.dart';
import 'package:collaboration_list/screens/login/screens/login_screen.dart';
import 'package:collaboration_list/utils_/app_color.dart';
import 'package:flutter/material.dart';

import '../utils_/app_strings.dart';
import '../utils_/navigation/navigation.dart';

List<String> onboardingImage = [
  "assets/images/onboarding01.png",
  "assets/images/onboarding02.png",
  "assets/images/onboarding03.png",
];

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController pageController = PageController();
  bool isLast = false;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            isLast = (value == onboardingImage.length - 1);
          });
        },
        controller: pageController,
        itemCount: onboardingImage.length,
        itemBuilder: (context, index) {
          return _buildImageBackgroundScreen(context, index);
        },
      ),
    );
  }

  Widget _buildImageBackgroundScreen(BuildContext context, int index) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(onboardingImage[index], fit: BoxFit.cover),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.0),
                Colors.black.withOpacity(0.6),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.5, 1.0],
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ElevatedButton(
                    onPressed: () {
                      PushNavigation().navigation(context: context, screen: LoginScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.white,
                      backgroundColor: AppColor.maincolor.withOpacity(0.6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      AppStrings.skip,
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 32.0,
                ),
                decoration: BoxDecoration(
                  color: AppColor.maincolor.withOpacity(0.9),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OnboardingTittleAndSubTittle(
                      subTittle: AppStrings.onboardingSubTittles[index],
                      tittle: AppStrings.onboardingTittles[index],
                    ),
                    const SizedBox(height: 24),
                    ContinueButtons(
                      pageController: pageController,
                      isLast: isLast,
                      screensLength: onboardingImage.length,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
