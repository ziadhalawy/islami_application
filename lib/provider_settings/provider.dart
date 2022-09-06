import 'package:flutter/material.dart';

class providerSettings extends ChangeNotifier {
  String currentLang = "en";
  ThemeMode currentTheme = ThemeMode.dark;

  void changeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool? isDarkMode() {
    if (currentTheme == ThemeMode.dark) return true;
  }

  void changeLang(String newLang) {
    if (newLang == currentLang) return;
    currentLang = newLang;
    notifyListeners();
  }
}
