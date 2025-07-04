import 'package:doctor/core/helpers/extensions.dart';
import 'package:doctor/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctor/features/login/ui/widgets/email_and_password.dart';
import 'package:doctor/features/login/ui/widgets/login_bloc_lisener.dart';
import 'package:doctor/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_form_field.dart';
import '../data/models/login_request_body.dart';
import '../logic/login_cubit.dart';

class LoginScren extends StatelessWidget {
  const LoginScren({super.key});

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
                Column(
                  children: [

                    const EmailAndPassword(),

                    verticalSpace(24),

                    Align(
                      alignment: Alignment.centerRight,
                        child: Text('Forgot password ?',style: TextStyles.font13BlueRegular,),
                    ),

                    verticalSpace(40),

                    AppTextButton(
                      buttonText: 'Login',
                      buttonTextStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),

                    verticalSpace(16),

                    const TermsAndConditionsText(),

                    verticalSpace(60),

                    const AlreadyHaveAccountText(),

                    const LoginBlocLisener(),


                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if(context.read<LoginCubit>().formKey.currentState!.validate()){
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
