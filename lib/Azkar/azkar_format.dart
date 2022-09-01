import 'package:flutter/material.dart';

class azkarFormat extends StatelessWidget {
  String content;

  azkarFormat(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Container(

        alignment: Alignment.centerRight,
        child: Text(
          content,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
