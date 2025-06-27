import 'package:doctor/core/helpers/extensions.dart';
import 'package:doctor/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctor/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_form_field.dart';

class LoginScren extends StatefulWidget {
  const LoginScren({super.key});

  @override
  State<LoginScren> createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14grayRegular.copyWith(
                    letterSpacing: 0.5,
                  ),
                ),
                verticalSpace(36),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: "Email"),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: "Password",
                        obscureText: isObscure,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          child: Icon(
                            isObscure ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: Alignment.centerRight,
                          child: Text('Forgot password ?',style: TextStyles.font13BlueRegular,),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: 'Login',
                        buttonTextStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {},
                      ),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const AlreadyHaveAccountText(),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
