import 'package:application_islami/Hadith/hadith_details.dart';
import 'package:flutter/material.dart';

import 'hadith.dart';

class hadithNameWidget extends StatelessWidget {
Hadith hadith;
  hadithNameWidget(this.hadith);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
            context, hadithDetails.routeName,
        arguments:hadith
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 2),
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
