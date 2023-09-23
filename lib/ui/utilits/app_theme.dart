import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static final TextStyle appBarTitleTextStyle = TextStyle(
      fontFamily: GoogleFonts.elMessiri().fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 30,
      color: AppColors.accent);
}
