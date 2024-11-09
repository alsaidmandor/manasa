import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/Home/ui/home_screen.dart';
import 'Features/onboarding/ui/boarding_screen.dart';
import 'core/route/app_router.dart';
import 'core/app_cubit/app_cubit.dart';
import 'core/route/routes.dart';
import 'core/theme/text_theme.dart';
import 'core/utils/constants.dart';
import 'generated/l10n.dart';

class ManasaApp extends StatelessWidget {
  final AppRouter appRouter;

  const ManasaApp({super.key, required this.appRouter, });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(
        create: (context) => AppCubit()
    ),
    ],

      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'Manasa App',
          debugShowCheckedModeBanner: false,
          locale: Locale('ar'),
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          theme: TtextTheme.lightTheme,
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
          home: isLoggedInUser ? const HomeScreen() : const OnboardingScreen(),
        ),
      ),
    );
  }
}