import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils_/widgets/background_image.dart';
import '../widget/reset_form.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            const BackgroundImage(),
            ResetForm(),

          ],
        ),

    );
  }
}
