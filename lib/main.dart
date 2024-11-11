import 'package:charging_system/core/my_locale.dart';
import 'package:charging_system/views/splash_page.dart';

import '../core/constants/colors.dart';
import '../views/login_page.dart';
import 'package:flutter/material.dart';
import "package:flutter_localizations/flutter_localizations.dart";

import 'core/app_localizations.dart';

void main() {
  runApp(const ChargingApp());
}

Locale getLocale() {
  MyLocale myLocale = MyLocale();
  return myLocale.getLocale();
}

class ChargingApp extends StatelessWidget {
  const ChargingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: getLocale(),
      supportedLocales: const <Locale>[Locale("ar"), Locale("en")],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback:
          (deviceLocale /*لغة الجهاز*/, supportedLocales /*اللغات المدعومة*/) {
        for (var locale in supportedLocales) {
          if (deviceLocale != null &&
              deviceLocale.languageCode == locale.languageCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      debugShowCheckedModeBanner: false,
      title: 'Charging System',
      theme: themeData(),
      home: const SplashPage(),
    );
  }

  ThemeData themeData() {
    return ThemeData(
        appBarTheme: const AppBarTheme(
            actionsIconTheme: IconThemeData.fallback(), color: secondColor),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.only(bottom: 5),
          labelStyle: TextStyle(color: secondColor),
          border: UnderlineInputBorder(borderSide: BorderSide.none),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: secondColor)),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: secondColor)),
          errorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: secondColor)),
          focusedErrorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: secondColor)),
        ),
        checkboxTheme:
            const CheckboxThemeData(side: BorderSide(color: secondColor)));
  }
}
