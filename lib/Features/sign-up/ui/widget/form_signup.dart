import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manasa/Features/sign-up/ui/logic/signup_cubit.dart';
import 'package:manasa/core/app_cubit/app_cubit.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/icon_moon.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widget/app_text_form_field.dart';
import '../../../../generated/l10n.dart';

class FormSignup extends StatefulWidget {
  const FormSignup({super.key});

  @override
  _FormSignupState createState() => _FormSignupState();
}

class _FormSignupState extends State<FormSignup> {

  bool isPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    var read = context.read<SignupCubit>();
    return Form(
        key: context.read<SignupCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              controller: read.nameController,
              hintText: S.of(context).name,
              validator: (String? value) {},
            ),
            verticalSpace(20),
            AppTextFormField(
              controller: read.emailController,
              hintText: S.of(context).email,
              validator: (String? value) {},
            ),
            verticalSpace(20),
            AppTextFormField(
              controller: read.passwordController,
              hintText: S.of(context).password,
              validator: (String? value) {},
              isObscureText: true,
              suffixIcon:  GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordObscureText = !isPasswordObscureText;
                  });
                },
                child: Icon(
                  isPasswordObscureText ? IconMoon.visibility_off : IconMoon.visibility,
                ),
              ), ),
          ],
        ));
  }
}
