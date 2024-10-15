import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widget/app_text_form_field.dart';

class FormSignup extends StatefulWidget {
  const FormSignup({super.key});

  @override
  _FormSignupState createState() => _FormSignupState();
}

class _FormSignupState extends State<FormSignup> {
  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        AppTextFormField(hintText: appLang(context)!.name!, validator: (String? value ) {  },),
        verticalSpace(20),
        AppTextFormField(hintText: appLang(context)!.email!, validator: (String? value ) {  },),
        verticalSpace(20),
        AppTextFormField(hintText: appLang(context)!.password!, validator: (String? value ) {  },),

      ],
    ));
  }
}
