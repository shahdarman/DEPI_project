import 'package:collaboration_list/screens/login/screens/login_screen.dart';
import 'package:collaboration_list/utils_/app_strings.dart';
import 'package:collaboration_list/utils_/validator/app_validator.dart';
import 'package:collaboration_list/utils_/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils_/app_color.dart';
import '../../../utils_/navigation/navigation.dart';
import '../../../utils_/widgets/custom_text.dart';
import '../../../utils_/widgets/custom_text_button.dart';
import '../../Home/screen/home_screen.dart';

class SignupForm extends StatelessWidget {
  SignupForm({super.key});

  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        AppStrings.signup,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: AppColor.textColor,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 90),
                        child: Text(
                          AppStrings.subtitlesignup,
                          style: TextStyle(
                            color: AppColor.textColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  CustomTextField(
                    controller: _usernameController,
                    hintText: AppStrings.username,
                    keyBoardType: TextInputType.name,
                    prefixIcon: Icons.person_rounded,
                    validator: (value) {
                      return AppValidator.validate(
                        input: value!,
                        type: ValidationType.fullname,
                      );
                    },
                  ),
                  SizedBox(height: 20,),
                  CustomTextField(
                    controller: _emailController,
                    hintText: AppStrings.email,
                    keyBoardType: TextInputType.emailAddress,
                    prefixIcon: Icons.email_rounded,
                    validator: (input) {
                      return AppValidator.validate(
                        input: input!,
                        type: ValidationType.email,
                      );
                    },
                  ),
                  SizedBox(height: 20,),
                  CustomTextField(
                    hideInput: true,
                    controller: _passwordController,
                    hintText: AppStrings.password,
                    keyBoardType: TextInputType.visiblePassword,
                    prefixIcon: Icons.lock_rounded,
                    validator: (input) {
                      return AppValidator.validate(
                        input: input!,
                        type: ValidationType.password,
                      );
                    },
                  ),
                  SizedBox(height: 20,),
                  CustomTextField(
                    hideInput: true,
                    controller: _confirmpasswordController,
                    hintText: AppStrings.password,
                    keyBoardType: TextInputType.visiblePassword,
                    prefixIcon: Icons.lock_rounded,
                    validator: (value) {
                      return AppValidator.validate(
                        input: value!,
                        type: ValidationType.confirmpassword,
                        otherValue: _passwordController.text,
                      );
                    },
                  ),
                  SizedBox(height: 20,),
                  CustomButton(
                    width: 295,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        PushNavigation().navigation(
                          context: context,
                          screen: HomeScreen(),
                        );
                      }
                    },
                    buttonText: AppStrings.signup,
                    height: 50,
                  ),
                  SizedBox(height: 10),
                  AppText(
                    text: AppStrings.alreadyhaveaccount,
                    boldText: AppStrings.signin,
                    onTap: () {
                      PushNavigation().navigation(
                        context: context,
                        screen: LoginScreen(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
