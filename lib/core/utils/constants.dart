import 'dart:convert';
import 'package:flutter/services.dart';
import '../model/app_language_model.dart';
import '../app_cubit/app_cubit.dart';

AppLanguageModel? languageModel;
TextDirection appDirection = TextDirection.ltr;
String appLanguage = '';
AppLanguageModel? appLang(context) => AppCubit.get(context).languageModel;

String getAppLanguage()
{
  return  'ar';
}

Future<String> getTranslationFile(String? appLanguage) async
{
  return await rootBundle
      .loadString('assets/translation/${appLanguage ?? 'en'}.json');
}