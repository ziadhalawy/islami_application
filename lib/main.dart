import 'package:application_islami/Colors.dart';
import 'package:application_islami/Hadith/hadith_details.dart';
import 'package:application_islami/Home%20Screen.dart';
import 'package:application_islami/Quran/sura_details.dart';
import 'package:application_islami/provider_settings/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/intl_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<providerSettings>(
      create: (buildContext) {
        return providerSettings();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<providerSettings>(context);
    return MaterialApp(
      theme: settingsProvider.currentTheme == ThemeMode.dark
          ? myColors.darkTheme
          : myColors.myLightTheme,
      themeMode: settingsProvider.currentTheme,
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
      supportedLocales: [const Locale('en'), const Locale('ar')],
      locale: Locale(settingsProvider.currentLang),
    );
  }
}
/*

 */