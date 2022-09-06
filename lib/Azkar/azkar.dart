import 'package:application_islami/Azkar/azkarFormat.dart';
import 'package:application_islami/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class azkar extends StatefulWidget {
  @override
  State<azkar> createState() => _azkarState();
}

class _azkarState extends State<azkar> {
  List<String> zkr = [];

  @override
  Widget build(BuildContext context) {
    if (zkr.isEmpty) readAzkar();

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: zkr.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                padding: EdgeInsets.all(1.5),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: ListView.separated(
                    itemBuilder: (_, index) {
                      return azkarFormat(zkr[index]);
                    },
                    separatorBuilder: (_, index) {
                      return Container(
                        color: Colors.black,
                        height: 2,
                      );
                    },
                    itemCount: zkr.length),
              ));
  }

  Future<void> readAzkar() async {
    var azkarContent = await rootBundle.loadString("assets/azkar/azkar.txt");
    List<String> azkarSplited = azkarContent.trim().split("\n");
    zkr = azkarSplited;
    print(azkarSplited);
    setState(() {});
  }
}
