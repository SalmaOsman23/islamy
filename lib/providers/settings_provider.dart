import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLocal = "en";
  ThemeMode currentTheme = ThemeMode.light;

  void setCurrentLocale(String newLocale) {
    currentLocal = newLocale;
    notifyListeners();
  }

  void setCurrentTheme(ThemeMode newThemeMode) {
    currentTheme = newThemeMode;
    notifyListeners();
  }

  bool isDarkMode() => currentTheme == ThemeMode.dark;
}
