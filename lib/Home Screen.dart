import 'package:application_islami/Azkar/azkar.dart';
import 'package:application_islami/Hadith/hadith.dart';
import 'package:application_islami/Quran/quran.dart';
import 'package:application_islami/Radio/radio.dart';
import 'package:application_islami/Settings/settings.dart';
import 'package:application_islami/Tasbih/tasbih.dart';
import 'package:application_islami/provider_settings/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/intl_localizations.dart';
import 'package:provider/provider.dart';

class homeScreen extends StatefulWidget {
  static const routeName = 'Home Screen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<providerSettings>(context);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: settingsProvider.isDarkMode() == true
                    ? AssetImage('assets/icons/background_dark.png')
                    : AssetImage('assets/icons/backgroundimage.png'))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title),
          ),
          body: Container(
            padding: EdgeInsets.fromLTRB(0, 48, 0, 0),
            child: itemBar[selectedIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      color: Theme.of(context).bottomAppBarColor,
                      AssetImage('assets/icons/backgroundimage.png')),
                  label: AppLocalizations.of(context)!.azkar_icon),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      color: Theme.of(context).bottomAppBarColor,
                      AssetImage('assets/icons/quran-ic.png')),
                  label: AppLocalizations.of(context)!.quran_icon),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      color: Theme.of(context).bottomAppBarColor,
                      AssetImage('assets/icons/hadeth-ic.png')),
                  label: AppLocalizations.of(context)!.hadith_icon),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      color: Theme.of(context).bottomAppBarColor,
                      AssetImage('assets/icons/sebha-ic.png')),
                  label: AppLocalizations.of(context)!.sibha_icon),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      color: Theme.of(context).bottomAppBarColor,
                      AssetImage('assets/icons/radio-ic.png')),
                  label: AppLocalizations.of(context)!.radio_icon),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  label: AppLocalizations.of(context)!.settings_icon),
            ],
          ),
        ));
  }

  int selectedIndex = 0;

  List<Widget> itemBar = [
    azkar(),
    quranTap(),
    hadithTap(),
    sibhaTap(),
    radioTab(),
    SettingsTab()
  ];
}
