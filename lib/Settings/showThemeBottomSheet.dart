import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/intl_localizations.dart';
import '../provider_settings/provider.dart';

class themeBottomSheet extends StatefulWidget {
  @override
  State<themeBottomSheet> createState() => _themeBottomSheet();
}

class _themeBottomSheet extends State<themeBottomSheet> {
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
                  settingsProvider.changeTheme(ThemeMode.light);
                },
                child: settingsProvider.currentTheme == ThemeMode.light
                    ? selectedTheme(AppLocalizations.of(context)!.light_theme)
                    : unSelectedTheme(
                        AppLocalizations.of(context)!.light_theme)),
            SizedBox(
              height: 16,
            ),
            InkWell(
                onTap: () {
                  settingsProvider.changeTheme(ThemeMode.dark);
                },
                child: settingsProvider.currentTheme == ThemeMode.dark
                    ? selectedTheme(AppLocalizations.of(context)!.dark_theme)
                    : unSelectedTheme(AppLocalizations.of(context)!.dark_theme))
          ],
        ),
      ),
    );
  }

  Widget selectedTheme(String text) {
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

  Widget unSelectedTheme(String text) {
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
