import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smile_makers/design/smile_colors.dart';

class SmileTheme{
  static ThemeData get mainTheme{
    return ThemeData(
        primaryColorDark: SmileColors.smileDarkBlue,
        primaryColor: SmileColors.smileDarkBlue,
        accentColor: SmileColors.smileYellow,
        scaffoldBackgroundColor: SmileColors.smileLightPaige,
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        buttonTheme: ButtonThemeData(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            buttonColor: SmileColors.smileYellow,
            textTheme: ButtonTextTheme.primary),
        appBarTheme: AppBarTheme(brightness: Brightness.dark)
    );
  }
}