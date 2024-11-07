import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manasa/Features/login/ui/widget/login_form.dart';
import 'package:manasa/Features/login/ui/widget/line_with_text.dart';
import 'package:manasa/core/helper/extensions.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/route/routes.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/theme/styles.dart';
import '../../../core/utils/constants.dart';
import '../../../core/widget/app_text_button.dart';
import '../../../core/widget/svg_image.dart';
import '../../../generated/l10n.dart';
import '../../../res/assets_res.dart';
import 'logic/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(

      listener: (context, state) {
        if (state is LoginLoading || state is LoginGoogleLoading ) {
          return buildLoading();
        } else if (state is LoginSuccess || state is LoginGoogleSuccess) {
          snackBarAnimation(context, S.of(context).loginSuccessful,
              AppColor.white, Colors.green);
        } else {
          snackBarAnimation(
              context, S.of(context).loginFailure, AppColor.white, Colors.red);
        }
      },
      child: Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
        child: Container(
            width: context.width.w,
            margin: EdgeInsetsDirectional.fromSTEB(25.w, 18.h, 20.w, 18.h),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).loginTitle,
                    style: TextStyles.fontHeading20BlackBold,
                  ),
                  verticalSpace(50),
                  LoginForm(),
                  verticalSpace(10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AppTextButton(
                      backgroundColor: Colors.transparent,
                      buttonWidth: 200.w,
                      isBorderSide: false,
                      buttonText: S.of(context).forgot_password,
                      textStyle: TextStyles.fontBody16BlackMedium
                          .copyWith(color: AppColor.primaryColor90),
                      onPressed: () {
                        context.pushNamed(Routes.forgetPassword);
                      },
                    ),
                  ),
                  verticalSpace(30),
                  AppTextButton(
                    buttonText: S.of(context).login,
                    textStyle: TextStyles.fontHeading18BlackBold
                        .copyWith(color: AppColor.white),
                    onPressed: () {
                      context.read<LoginCubit>().login();
                    },
                  ),
                  verticalSpace(20),
                  buildIfDoNotHaveAccount(context),
                  // make line in middle word or line
                  verticalSpace(20),
                  LineWithText(),
                  verticalSpace(20),
                  SocialButton()
                ])),
      ))),
    );
  }

  Row buildIfDoNotHaveAccount(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        S.of(context).donNotHave,
        style: TextStyles.fontBody14BlackRegular
            .copyWith(color: AppColor.mainBlack60),
      ),
      TextButton(
        onPressed: () {
          context.pushReplacementNamed(Routes.signUpScreen);
        },
        child: Text(S.of(context).create_account,
            style: TextStyles.fontBody14BlackRegular
                .copyWith(color: AppColor.primaryColor90)),
      )
    ]);
  }

  void buildLoading() {
    Center(
      child: CircularProgressIndicator(),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextButton(
          onPressed: () {
            context.read<LoginCubit>().loginWithGoogle();
          },
          backgroundColor: Colors.transparent,
          buttonText: '',
          textStyle: TextStyles.fontBody16BlackMedium
              .copyWith(color: AppColor.mainBlack90),
          isBorderSide: true,
          colorBorderSide: AppColor.mainBlack20,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgImage(
              assetPath: AssetsRes.GOOGLE,
            ),
            horizontalSpace(10),
            Text(
              S.of(context).sign_in_with_google,
              style: TextStyles.fontBody16BlackMedium
                  .copyWith(color: AppColor.mainBlack90),
            )
          ]),
        ),
        verticalSpace(20),
        AppTextButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          buttonText: '',
          textStyle: TextStyles.fontBody16BlackMedium
              .copyWith(color: AppColor.mainBlack90),
          isBorderSide: true,
          colorBorderSide: AppColor.mainBlack20,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SvgImage(
              assetPath: AssetsRes.APPLE,
            ),
            horizontalSpace(10),
            Text(
              S.of(context).sign_in_with_apple,
              style: TextStyles.fontBody16BlackMedium
                  .copyWith(color: AppColor.mainBlack90),
            )
          ]),
        ),
      ],
    );
  }
}
