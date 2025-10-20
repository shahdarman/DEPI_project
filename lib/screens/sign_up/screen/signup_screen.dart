import 'package:collaboration_list/screens/sign_up/widgets/signup_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils_/widgets/background_image.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          SignupForm(),
        ],
      ),
    );
  }
}
