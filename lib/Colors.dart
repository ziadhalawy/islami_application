import 'package:flutter/material.dart';

class myColors {
  static final Color colorGold = Color.fromRGBO(56, 21, 21, 188);
  static final Color colorYellow = Color(0XFFFACC1A);
  static final Color colorDarkBlue = Color(0XFF19223C);
  static final Color pageColor = Color.fromRGBO(56, 21, 21, 188);
  static final ThemeData myLightTheme = ThemeData(
      canvasColor: myColors.pageColor,
      primaryColor: pageColor,
      textTheme: TextTheme(
        headline2: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
        headline3: TextStyle(
            fontSize: 18,
            color: myColors.colorGold,
            fontWeight: FontWeight.w600),
        headline4: TextStyle(
            fontSize: 34, color: Colors.grey, fontWeight: FontWeight.w600),
        headline6: TextStyle(
            fontSize: 22, color: Colors.grey, fontWeight: FontWeight.w600),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.black),
        selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.black),
        unselectedLabelStyle: TextStyle(fontSize: 16, color: Colors.white10),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      bottomAppBarColor: Colors.white,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          shadowColor: Colors.blue[300],
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 30)));

  static final ThemeData darkTheme = ThemeData(
      canvasColor: myColors.colorYellow,
      primaryColor: colorYellow,
      textTheme: TextTheme(
        headline2: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        headline3: TextStyle(
            fontSize: 18,
            color: myColors.colorYellow,
            fontWeight: FontWeight.w600),
        headline4: TextStyle(
            fontSize: 24, color: Colors.grey, fontWeight: FontWeight.w600),
        headline6: TextStyle(
            fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.white),
        unselectedLabelStyle: TextStyle(fontSize: 16, color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomAppBarColor: Colors.white,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          shadowColor: Colors.blue[300],
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 30)));
}
