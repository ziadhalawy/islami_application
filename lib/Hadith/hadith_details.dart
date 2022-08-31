import 'package:application_islami/Hadith/hadith.dart';
import 'package:flutter/material.dart';


class hadithDetails extends StatefulWidget {
  static const routeName = 'Hadith Details';

  @override
  State<hadithDetails> createState() => _hadithDetailsState();
}

class _hadithDetailsState extends State<hadithDetails> {

  @override
  Widget build(BuildContext context) {
var args = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/icons/backgroundimage.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(
                args.title,
              ),
            ),
            body: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 50, 5, 20),
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                            args.content,
                          style: Theme.of(context).textTheme.headline4,
                          textDirection: TextDirection.rtl,
                        )
                      ),
                    )
            ),
        ),
    );
  }
}
