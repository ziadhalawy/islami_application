import 'package:application_islami/Settings/ContainerSettings.dart';
import 'package:application_islami/Settings/showThemeBottomSheet.dart';
import 'package:application_islami/generated/l10n.dart';
import 'package:application_islami/provider_settings/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/intl_localizations.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<providerSettings>(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language_label,
            style: Theme.of(context).textTheme.headline6,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                  )),
              child: Text(
                settingsProvider.currentLang == "ar" ? "العربية" : "English",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            AppLocalizations.of(context)!.theme_label,
            style: Theme.of(context).textTheme.headline6,
          ),
          InkWell(
            onTap: () {
              showTheme();
            },
            child: Container(
              padding: EdgeInsets.all(15),
              margin: const EdgeInsets.fromLTRB(4, 4, 0, 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                  )),
              child: Text(
                AppLocalizations.of(context)!.light_theme,
                style: TextStyle(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showBottomSheet(
        context: context,
        builder: (buildContext) {
          return Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: bottomSheetLanguage(),
          );
        });
  }

  void showTheme() {
    showBottomSheet(
        context: context,
        builder: (buildContext) {
          return Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: themeBottomSheet(),
          );
        });
  }
}
