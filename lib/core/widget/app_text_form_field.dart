import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_color.dart';
import '../theme/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? radius;
  final TextInputType? textInputType;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Function(String?)? onSaved;
  final Function(String)? onChange;

  final List<String>? autoFillHint;

  final TextInputAction? textInputAction;

  final Function()? onEditingComplete;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.onSaved,
    this.autoFillHint,
    this.textInputAction,
    this.onEditingComplete,
    this.prefixIcon,
    this.radius = 16,
    this.textInputType, this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      autofillHints: autoFillHint,
      controller: controller,
      keyboardType: textInputType,
      // autofocus: true,
      onEditingComplete: onEditingComplete,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColor.mainBlack60,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(radius!),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColor.mainBlack60,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintStyle: hintStyle ??
            TextStyles.fontBody16BlackRegular
                .copyWith(color: AppColor.mainBlack40),
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: backgroundColor ?? AppColor.mainBlack5,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.fontBody16BlackMedium,
      validator: (value) {
        return validator(value);
      },
      onSaved: (value) {
        onSaved!(value);
      },
      onChanged: (value) {
        onChange!(value);
      },
    );
  }
}
