import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/presentations/home_page.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/widgets/app_localizations.dart';
import 'package:resume/widgets/text_localizations.dart';
import 'package:resume/widgets/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: [SystemUiOverlay.top])
      .then(((_) => runApp(ScreenUtilInit(
          designSize: const Size(372, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (BuildContext context, Widget? child) => const MyApp()))));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery App ',
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.darkTheme,
      theme: MyThemes.lightTheme,

      localizationsDelegates: const [
        TextLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // List all of the app's supported locales here
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('bg'),
        Locale('cs'),
        Locale('de'),
        Locale('fr'),
        Locale('es'),
        Locale('he'),
        Locale('hi'),
        Locale('ja'),
        Locale('lv'),
        Locale('pl'),
        Locale('sk'),
      ],
      // These delegates make sure that the localization data for the proper language is loaded
     // localizationsDelegates:  [
        
        
      //  AppLocalizations.delegate,
      
      //   GlobalMaterialLocalizations.delegate,
        
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // // Returns a locale which will be used by the app
      // localeResolutionCallback: (locale, supportedLocales) {
      //   // Check if the current device locale is supported
      //   for (var supportedLocale in supportedLocales) {
      //     if (supportedLocale.languageCode == locale!.languageCode &&
      //         supportedLocale.countryCode == locale.countryCode) {
      //       return supportedLocale;
      //     }
      //   }
      //   // If the locale of the device is not supported, use the first one
      //   // from the list (English, in this case).
      //   return supportedLocales.first;
      // },
      home: const HomePage(),
    );
  }
}
