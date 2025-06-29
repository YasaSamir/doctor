import 'package:doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final String hintText;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final Color? suffixIconColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    this.inputTextStyle,
    required this.hintText,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.backgroundColor,
    this.suffixIconColor,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3.w,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.lighterGray,
                width: 1.3.w,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        errorBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.3.w,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        focusedErrorBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.3.w,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText ?? 'Email',
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor ?? ColorsManager.mainBlue,
        filled: true,
        fillColor: backgroundColor ?? ColorsManager.moreLightGray,
      ),
      obscureText: obscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      validator: (value) => validator(value),
    );
  }
}
