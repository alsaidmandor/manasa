import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manasa/res/font_res.dart';

import 'Features/onboarding/ui/boarding_screen.dart';
import 'core/route/app_router.dart';
import 'core/route/routes.dart';
import 'core/theme/app_color.dart';
import 'core/theme/text_theme.dart';

class ManasaApp extends StatelessWidget {
  final AppRouter appRouter;
  const ManasaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Manasa App',
        debugShowCheckedModeBanner: false,

        theme: TtextTheme.lightTheme,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
        home: OnboardingScreen(),
      ),
    );
  }
}