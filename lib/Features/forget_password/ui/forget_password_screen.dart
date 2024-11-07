import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manasa/core/helper/extensions.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/theme/styles.dart';
import '../../../core/utils/constants.dart';
import '../../../core/widget/app_text_button.dart';
import '../../../core/widget/app_text_form_field.dart';
import '../../../generated/l10n.dart';
import 'logic/forget_password_cubit.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var read = context.read<ForgetPasswordCubit>();

    return BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
  listener: (context, state) {
    if (state is ForgetPasswordLoading ) {
      showDialog(
        context: context,
        builder: (context) =>  Center(
          child: CircularProgressIndicator(
            color: AppColor.primaryColor60,
          ),
        ),
      );

    } else if (state is ForgetPasswordSuccess) {
      snackBarAnimation(context, S.of(context).resent_password_successful,
          AppColor.white, Colors.green);
      context.pop();
    } else {
      snackBarAnimation(
          context, S.of(context).resent_password_failure, AppColor.white, Colors.red);
    }
  },
  child: Scaffold(
      appBar: AppBar(title: Text(S.of(context).forgot_password_2 , style: TextStyles.fontHeading20BlackBold,) ),
      body: SafeArea(child:Container(
        width: context.width.w,
        margin: EdgeInsetsDirectional.fromSTEB(25.w, 18.h, 20.w, 18.h),
        child: Column(
          children: [

            Text(
              S.of(context).forgot_password_title,
              style: TextStyles.fontBody14BlackRegular.copyWith(color: AppColor.mainBlack80),),

            verticalSpace(20),
            AppTextFormField(
              controller: read.emailController,
              hintText: S.of(context).email,
              validator: (String? value) {},
            ),
            verticalSpace(30),
            AppTextButton(
              buttonText: S.of(context).forgot_password_3,
              textStyle: TextStyles.fontHeading18BlackBold
                  .copyWith(color: AppColor.white),
              onPressed: () {
                context.read<ForgetPasswordCubit>().emitForgetPassword();
              },
            ),

          ],
        ),

      )),
    ),
);
  }

}
