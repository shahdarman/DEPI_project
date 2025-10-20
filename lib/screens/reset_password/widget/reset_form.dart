import 'dart:developer';

import 'package:collaboration_list/screens/login/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils_/app_color.dart';
import '../../../utils_/app_strings.dart';
import '../../../utils_/navigation/navigation.dart';
import '../../../utils_/validator/app_validator.dart';
import '../../../utils_/widgets/custom_text_button.dart';
import '../../../utils_/widgets/custom_text_field.dart';
import '../../Home/screen/home_screen.dart';

class ResetForm extends StatelessWidget{
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    AppStrings.resetPassword,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColor.textColor,
                    ),
                  ),
                  SizedBox(height: 50,),
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
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    width: 300,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        PushNavigation().navigation(
                          context: context,
                          screen:LoginScreen(),
                        );
                      }
                    },
                    buttonText: AppStrings.rest, height:50,
                  ),
                  SizedBox(height: 100,),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
  }

}