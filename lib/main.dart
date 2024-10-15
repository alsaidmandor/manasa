import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/route/app_router.dart';
import 'core/utils/constants.dart';
import 'manasa_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  appLanguage =  getAppLanguage();

  String translation = await getTranslationFile(appLanguage);

  await ScreenUtil.ensureScreenSize();
  runApp(ManasaApp(    appRouter: AppRouter(), translationFile: translation, code: appLanguage,));

}



