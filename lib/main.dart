import 'package:application_islami/Colors.dart';
import 'package:application_islami/Hadith/hadith_details.dart';
import 'package:application_islami/Home%20Screen.dart';
import 'package:application_islami/Quran/sura_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/intl_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: myColors.myLightTheme,
      title: 'Islami app',
      initialRoute: homeScreen.routeName,
      routes: {
        homeScreen.routeName: (_) => homeScreen(),
        suraDetails.routeName: (_) => suraDetails(),
        hadithDetails.routeName: (_) => hadithDetails(),
      },
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const   Locale('en'),
        const Locale('ar')
      ],
      locale: Locale('ar'),
    );
  }
}
/*

 */