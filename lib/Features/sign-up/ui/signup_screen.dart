import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manasa/Features/sign-up/ui/widget/form_signup.dart';
import 'package:manasa/core/helper/extensions.dart';
import 'package:manasa/core/helper/spacing.dart';
import 'package:manasa/core/theme/styles.dart';
import '../../../core/route/routes.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/utils/constants.dart';
import '../../../core/widget/app_text_button.dart';
import '../../../generated/l10n.dart';
import 'logic/signup_cubit.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
      current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupFailure,

      listener: (context, state) {
        if (state is SignupLoading) {
          return buildLoading();
        }
        else if (state is SignupSuccess) {
          snackBarAnimation(context, S
              .of(context)
              .registerSuccessful, AppColor.white, Colors.green);
          context.pushReplacementNamed(Routes.homeScreen);
        } else {
          snackBarAnimation(context, S
              .of(context)
              .registerFailure, AppColor.white, Colors.red);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                width: context.width.w,
                margin: EdgeInsetsDirectional.fromSTEB(25.w, 18.h, 20.w, 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      S
                          .of(context)
                          .titleSignup,
                      style: TextStyles.fontHeading20BlackBold,
                    ),
                    verticalSpace(50),
                    Column(
                      children: [
                        FormSignup(),
                        verticalSpace(20),
                        AppTextButton(
                          buttonText: S
                              .of(context)
                              .registerNow,
                          textStyle: TextStyles.fontHeading18BlackBold
                              .copyWith(color: AppColor.white),
                          onPressed: () {
                            context.read<SignupCubit>().createAccount();
                          },
                        ),
                        verticalSpace(20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).alreadyHaveAccount,style: TextStyles.fontBody14BlackRegular.copyWith(color: AppColor.mainBlack60),),
                    TextButton(
                      onPressed: () {
                        context.pushReplacementNamed( Routes.loginScreen);
                      }, child: Text(S.of(context).login,style: TextStyles.fontBody14BlackRegular.copyWith(color: AppColor.primaryColor90)),)

                  ]
              )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void buildLoading() {
    showDialog(
    context: context,
    builder: (context) =>  Center(
      child: CircularProgressIndicator(
        color: AppColor.primaryColor60,
      ),
    ),
  );
  }

}




