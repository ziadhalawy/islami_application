import 'package:application_islami/Hadith/hadith_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class hadithTap extends StatefulWidget {
  @override
  State<hadithTap> createState() => _hadithTapState();
}

class _hadithTapState extends State<hadithTap> {
  List<Hadith> hadithList = [];
  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) readFiles();
    return hadithList.isEmpty
        ? Center(child: CircularProgressIndicator())
        : ListView.separated(
            itemCount: hadithList.length,
            itemBuilder: (_, index) {
              return (hadithNameWidget(hadithList[index]));
            },
            separatorBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 2,
              );
            },
          );
    /*
    Container(
      child: Column(
        children: [

          Expanded(
            child:
          )
        ],
      ),
    );*/
  }

  void readFiles() async {
    String fileContent =
        await rootBundle.loadString('assets/hadithtxt/ahadeth.txt');
    List<Hadith> hadithOfFile = [];
    List<String> allHadith = fileContent.trim().split('#');
    for (int i = 0; i < allHadith.length; i++) {
      List<String> hadithLines = allHadith[i].trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      Hadith h = Hadith(content, title);
      hadithOfFile.add(h);
    }
    hadithList = hadithOfFile;
    setState(() {});
  }
}

class Hadith {
  String title;
  String content;
  Hadith(this.content, this.title);
}
