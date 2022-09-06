import 'package:application_islami/Quran/sura_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_settings/provider.dart';

class suraName extends StatelessWidget {
  String title;

  int index;

  suraName(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<providerSettings>(context);

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, suraDetails.routeName,
            arguments: argData(index, title));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 2),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}

class argData {
  int index;
  String title;

  argData(this.index, this.title);
}
