import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static final TextStyle appBarTitleTextStyle = TextStyle(
      fontFamily: GoogleFonts.elMessiri().fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 35,
      color: AppColors.accent);

  static final TextStyle quranTabTitleTextStyle = TextStyle(
      fontFamily: GoogleFonts.elMessiri().fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: 25,
      color: AppColors.accent);

  static final TextStyle settingsTitleTextStyle = TextStyle(
      fontFamily: GoogleFonts.elMessiri().fontFamily,
      fontWeight: FontWeight.w600,
      fontSize: 25,
      color: AppColors.accent);

  static final TextStyle settingsOptionTextStyle = TextStyle(
      fontFamily: GoogleFonts.elMessiri().fontFamily,
      fontWeight: FontWeight.normal,
      fontSize: 22,
      color: AppColors.accent);
}
