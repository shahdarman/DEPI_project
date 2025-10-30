import 'package:collaboration_list/screens/login/widgets/login_form.dart';
import 'package:collaboration_list/utils_/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils_/widgets/background_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
        const BackgroundImage(),
        LoginForm(),

        ],
      ),
    );
  }
}
