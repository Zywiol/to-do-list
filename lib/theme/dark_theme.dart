import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromRGBO(11, 33, 33, 1),
  ),
  colorScheme: const ColorScheme.dark(
    background: Color.fromRGBO(11, 33, 33, 1),
    primary: Color.fromRGBO(53, 65, 65, 1),
    secondary: Color.fromRGBO(67, 150, 151, 1),
  ),
  iconTheme: const IconThemeData(
    color: Color.fromRGBO(255, 255, 255, 1),
  ),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.poppins(
      color: const Color.fromRGBO(255, 255, 255, 1),
      fontSize: 28,
      fontWeight: FontWeight.w700,
      height: 1.5,
    ),
    titleLarge: GoogleFonts.poppins(
      color: const Color.fromRGBO(255, 255, 255, 1),
      fontSize: 20,
      fontWeight: FontWeight.w700,
      height: 1.5,
    ),
    titleSmall: GoogleFonts.poppins(
        color: const Color.fromRGBO(255, 255, 255, 1),
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    titleMedium: GoogleFonts.poppins(
        color: const Color.fromRGBO(255, 255, 255, 1),
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    bodySmall: GoogleFonts.poppins(
      color: const Color.fromRGBO(255, 255, 255, 1),
      fontSize: 13,
      fontWeight: FontWeight.w400,
      height: 1.5,
    ),
    labelMedium: GoogleFonts.poppins(
      color: const Color.fromRGBO(255, 255, 255, 1),
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.5,
    ),
  ),
);
