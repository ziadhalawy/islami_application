import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/intl_localizations.dart';
import '../provider_settings/provider.dart';

class bottomSheetLanguage extends StatefulWidget {
  @override
  State<bottomSheetLanguage> createState() => _bottomSheetLanguageState();
}

class _bottomSheetLanguageState extends State<bottomSheetLanguage> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<providerSettings>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
                onTap: () {
                  settingsProvider.changeLang('en');
                },
                child: settingsProvider.currentLang == 'en'
                    ? selectedLang(AppLocalizations.of(context)!.english_lang)
                    : unselectedLang(
                        AppLocalizations.of(context)!.english_lang)),
            SizedBox(
              height: 16,
            ),
            InkWell(
                onTap: () {
                  settingsProvider.changeLang('ar');
                },
                child: settingsProvider.currentLang == 'ar'
                    ? selectedLang(AppLocalizations.of(context)!.arabic_lang)
                    : unselectedLang(AppLocalizations.of(context)!.arabic_lang))
          ],
        ),
      ),
    );
  }

  Widget selectedLang(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Theme.of(context).primaryColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).canvasColor,
        )
      ],
    );
  }

  Widget unselectedLang(String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
