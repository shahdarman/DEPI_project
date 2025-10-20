
import 'package:flutter/cupertino.dart';

import '../../utils_/app_color.dart';

class OnboardingTittleAndSubTittle extends StatelessWidget {
  const OnboardingTittleAndSubTittle({super.key,required this.subTittle,required this.tittle});
  final String tittle;
  final String subTittle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Text(
          tittle,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColor.textColor,
              fontSize: 14,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10,),
        Text(
          subTittle,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColor.textColor,
            fontSize: 12,
          ),

        ),
        SizedBox(height: 60,),
      ],
    );
  }
}
