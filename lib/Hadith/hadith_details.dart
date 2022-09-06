import 'package:application_islami/Hadith/hadith.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_settings/provider.dart';

class hadithDetails extends StatefulWidget {
  static const routeName = 'Hadith Details';

  @override
  State<hadithDetails> createState() => _hadithDetailsState();
}

class _hadithDetailsState extends State<hadithDetails> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadith;
    var settingsProvider = Provider.of<providerSettings>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: settingsProvider.isDarkMode() == true
                  ? AssetImage('assets/icons/background_dark.png')
                  : AssetImage('assets/icons/backgroundimage.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            args.title,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Text(
                args.content,
                style: Theme.of(context).textTheme.headline5,
                textDirection: TextDirection.rtl,
              )),
        ),
      ),
    );
  }
}
