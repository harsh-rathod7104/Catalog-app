import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        cardColor: lightBluishColor,
        canvasColor: creamColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.deepPurple,
        primaryColorLight: darkBluishColor,
      );

  //Colors

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
        // fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(backgroundColor: Colors.orange),
        cardColor: darkBluishColor,
        canvasColor: darkCreamColor,
        primarySwatch: Colors.orange,
        primaryColorLight: Colors.white,
      );

  static Color creamColor = Color(0xffff5f5f5);
  static Color darkCreamColor = Color(0xff0b0b0b);
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.purple400;
}
