import 'package:flutter/material.dart';

import '../../res/font_res.dart';
import 'app_color.dart';

class TtextTheme{

  const TtextTheme._();

  static final lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor90,
    fontFamily: FontRes.FFSHAMELFAMILY_SANSONEBOLD,
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.primaryColor10,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColor.mainBlack90),
        centerTitle: true),
    scaffoldBackgroundColor: AppColor.white,
    iconTheme: const IconThemeData(color: AppColor.mainBlack90),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColor.white,
      elevation: 0,
      selectedItemColor: AppColor.mainBlack90,
      unselectedItemColor: AppColor.mainBlack90,
    ),

  );
  static final darkTheme = TextTheme();
}