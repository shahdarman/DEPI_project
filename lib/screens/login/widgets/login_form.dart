import 'dart:developer';

import 'package:collaboration_list/screens/Home/screen/home_screen.dart';
import 'package:collaboration_list/screens/sign_up/screen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils_/app_color.dart';
import '../../../utils_/app_strings.dart';
import '../../../utils_/navigation/navigation.dart';
import '../../../utils_/validator/app_validator.dart';
import '../../../utils_/widgets/custom_text.dart';
import '../../../utils_/widgets/custom_text_button.dart';
import '../../../utils_/widgets/custom_text_field.dart';
import '../../reset_password/screen/reset_screen.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
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
                  CustomTextField(
                    controller: _nameController,
                    prefixIcon: Icons.email_sharp,
                    hintText: AppStrings.email,
                    keyBoardType: TextInputType.emailAddress,
                    validator: (input) {
                      return AppValidator.validate(
                        input: input!,
                        type: ValidationType.email,
                      );
                    },
                  ), //email
                  SizedBox(height: 30),
                  CustomTextField(
                    hideInput: true,
                    prefixIcon: Icons.lock_outline,
                    controller: _passwordController,
                    hintText: AppStrings.password,
                    keyBoardType: TextInputType.visiblePassword,
                    validator: (input) {
                      return AppValidator.validate(
                        input: input!,
                        type: ValidationType.password,
                      );
                    },
                  ), //password
                  SizedBox(height: 5),
                  TextButton(
                    onPressed: () {
                      PushNavigation().navigation(context: context, screen: ResetScreen());
                    },
                    child: Text(
                      AppStrings.forgetpassword,style: TextStyle(color: AppColor.greyColor,), textAlign: TextAlign.end,),
                  ),
                  SizedBox(height: 20,),
                  CustomButton(
                    width: 295,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        PushNavigation().navigation(context: context, screen: HomeScreen());

                      }
                    },
                    buttonText: AppStrings.signin, height: 50,
                  ),
                  SizedBox(height: 10),
                  AppText(text: AppStrings.alreadyhaveaccount, boldText: AppStrings.signup, onTap: (){
                    PushNavigation().navigation(context: context, screen: SignupScreen());
                  })

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
