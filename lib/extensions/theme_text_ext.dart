import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle extends ThemeExtension<CustomTextStyle> {
  const CustomTextStyle({this.textStyle});

  final TextStyle? textStyle;

  @override
  CustomTextStyle copyWith({TextStyle? textStyle}) {
    return CustomTextStyle(textStyle: textStyle ?? textStyle);
  }

  @override
  CustomTextStyle lerp(ThemeExtension<CustomTextStyle>? other, double t) {
    if (other is! CustomTextStyle) {
      return this;
    }
    return CustomTextStyle(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }

  static CustomTextStyle light = CustomTextStyle(
      textStyle: GoogleFonts.poppins(
    color: const Color.fromRGBO(255, 255, 255, 1),
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
  ));

  static CustomTextStyle dark = CustomTextStyle(
      textStyle: GoogleFonts.poppins(
    color: const Color.fromRGBO(255, 255, 255, 1),
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
  ));
}
