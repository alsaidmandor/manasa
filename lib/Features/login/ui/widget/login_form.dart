import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/icon_moon.dart';
import '../../../../core/widget/app_text_form_field.dart';
import '../../../../generated/l10n.dart';
import '../logic/login_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    var read = context.read<LoginCubit>();
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [

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
              isObscureText: isPasswordObscureText,
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
