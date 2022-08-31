import 'package:application_islami/Hadith/hadith.dart';
import 'package:application_islami/Quran/quran.dart';
import 'package:application_islami/Radio/radio.dart';
import 'package:application_islami/Tasbih/tasbih.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/intl_localizations.dart';


class homeScreen extends StatefulWidget {
  static const routeName = 'Home Screen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/icons/backgroundimage.png'),
              fit: BoxFit.fill)),
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
                    color: Colors.black,
                    AssetImage('assets/icons/quran-ic.png')),
                label: AppLocalizations.of(context)!.quran_icon),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    color: Colors.black,
                    AssetImage('assets/icons/hadeth-ic.png')),
                label: AppLocalizations.of(context)!.hadith_icon),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    color: Colors.black,
                    AssetImage('assets/icons/sebha-ic.png')),
                label:  AppLocalizations.of(context)!.sibha_icon),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    color: Colors.black,
                    AssetImage('assets/icons/radio-ic.png')),
                label:  AppLocalizations.of(context)!.radio_icon),
          ],
        ),
      ),
    );
  }

  int selectedIndex = 0;

  List<Widget> itemBar = [quranTap(), hadithTap(), sibhaTap(), radioTab()];
}
