import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manasa/core/helper/extensions.dart';
import 'package:manasa/core/helper/spacing.dart';
import 'package:manasa/core/theme/styles.dart';
import '../../../core/utils/constants.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SafeArea(
            child: Container(
              width: context.width.w,
              margin: EdgeInsetsDirectional.fromSTEB(25.w, 18.h, 20.w, 18.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    appLang(context)!.titleSignup!,
                    style: TextStyles.fontHeading20BlackBold,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
