import 'package:application_islami/Colors.dart';
import 'package:application_islami/Quran/sura_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_settings/provider.dart';

class quranTap extends StatelessWidget {
  List<String> names = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<providerSettings>(context);

    return Container(
      /*decoration: BoxDecoration(
        color: myColors.pageColor,
        borderRadius: BorderRadius.circular(26),
      ),
    */
      child: Column(
        children: [
          Image.asset('assets/icons/fanos.png'),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
                        color: settingsProvider.isDarkMode() == true
                            ? myColors.colorYellow
                            : myColors.colorGold,
                        width: 3))),
            child: Text(
              'اسم السورة',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: names.length,
              itemBuilder: (_, index) {
                return suraName(names[index], index);
              },
              separatorBuilder: (_, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  color: settingsProvider.isDarkMode() == true
                      ? myColors.colorYellow
                      : myColors.colorGold,
                  width: double.infinity,
                  height: 1,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
