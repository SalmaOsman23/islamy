import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLocal = "en";

  void setCurrentLocale(String newLocale) {
    currentLocal = newLocale;
    notifyListeners();
  }
}
