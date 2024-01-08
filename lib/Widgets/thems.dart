import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.deepPurple,
      );

  //Colors
  static Color creamColor = Color(0xffff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
}
