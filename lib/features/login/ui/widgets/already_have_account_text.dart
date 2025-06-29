

import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      children:[ TextSpan(
        text: "Already have an account?" ,
        style: TextStyles.font13DarkBlueRegular
      ),
      TextSpan(
        text: ' Sign up',
        style: TextStyles.font13BlueSemiBold,
      )
      ]
    ));
  }
}
