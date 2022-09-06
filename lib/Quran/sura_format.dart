import 'package:flutter/material.dart';

class suraFormat extends StatelessWidget {
  String content;

  int index;

  suraFormat(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Container(

        child: Text(
          content,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
