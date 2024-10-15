import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/onboarding/ui/boarding_screen.dart';
import 'core/route/app_router.dart';
import 'core/app_cubit/app_cubit.dart';
import 'core/route/routes.dart';
import 'core/theme/text_theme.dart';

class ManasaApp extends StatelessWidget {
  final AppRouter appRouter;
  final String translationFile;
  final String code;
  const ManasaApp({super.key, required this.appRouter, required this.translationFile, required this.code});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(
        create: (context) => AppCubit()..setLanguage(
      translationFile: translationFile,
      code: code,
    ),
    ),
    ],

      child: ScreenUtilInit(
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
      ),
    );
  }
}