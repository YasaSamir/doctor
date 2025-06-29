
import 'package:doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasSpecialChar,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       BuildValidionRow('at least 1 lowercase letter', hasLowerCase),
       verticalSpace(2),
       BuildValidionRow('at least 1 has UpperCase letter', hasUpperCase),
       verticalSpace(2),
       BuildValidionRow('at least 1 Number letter', hasNumber),
       verticalSpace(2),
       BuildValidionRow('at least 1 Special Character letter', hasSpecialChar),
       verticalSpace(2),
       BuildValidionRow('at least 8 characters ', hasMinLength),
     ],
   );
  }

  Widget BuildValidionRow(String text, bool isValid) => Row(
    children: [
      CircleAvatar(
        radius: 2.5,
        backgroundColor: ColorsManager.gray,
      ),
    horizontalSpace(6),
      Text(text, style: TextStyles.font13DarkBlueRegular.copyWith(
        decoration: isValid ? TextDecoration.lineThrough : TextDecoration.none,
        decorationColor: Colors.green,
        decorationThickness: 2,
        color: isValid? Colors.green : ColorsManager.gray,
      ),
      ),

    ],
  );


}