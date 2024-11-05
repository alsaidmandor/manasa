import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import '../model/app_language_model.dart';
import '../app_cubit/app_cubit.dart';

/*
AppLanguageModel? languageModel;
TextDirection appDirection = TextDirection.ltr;
String appLanguage = '';
AppLanguageModel? appLang(context) => AppCubit.get(context).languageModel;
*/

FirebaseAuth firebaseAuth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
/*String getAppLanguage()
{
  return  'ar';
}

Future<String> getTranslationFile(String? appLanguage) async
{
  return await rootBundle
      .loadString('assets/translation/${appLanguage ?? 'en'}.json');
}*/
final logger = Logger();

void snackBarAnimation(context, String message , Color? color ,Color? backgroundColor) {
  ScaffoldMessenger.of(context).showSnackBar(
      snackBarAnimationStyle: AnimationStyle(
        duration: Duration(milliseconds: 500),
        curve: Curves.bounceOut,
      ),
      SnackBar(
        content: Text(message,
          style: TextStyle(fontSize: 16, color: color ?? Colors.white),),
        backgroundColor: backgroundColor ?? Colors.green,
        duration: Duration(milliseconds: 800),
        shape: RoundedRectangleBorder(side: BorderSide(width: 0),borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        margin: EdgeInsets.all( 10.h),
        behavior: SnackBarBehavior.floating,
      ));
}
