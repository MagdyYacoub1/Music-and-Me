import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class MyThemes{
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: bgColorDarkTheme,
    colorScheme: ColorScheme.dark(),
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
  );
}