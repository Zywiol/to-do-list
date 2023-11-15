import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.red,
    required this.black,
    required this.primary,
    required this.white,
    required this.profileBackground,
  });

  final Color red;
  final Color black;
  final Color primary;
  final Color white;
  final Color profileBackground;

  @override
  CustomColors copyWith({
    Color? red,
    Color? black,
    Color? primary,
    Color? white,
    Color? profileBackground,
  }) {
    return CustomColors(
      red: red ?? this.red,
      black: black ?? this.black,
      primary: red ?? this.primary,
      white: white ?? this.white,
      profileBackground: profileBackground ?? this.profileBackground,
    );
  }

  @override
  CustomColors lerp(
    ThemeExtension<CustomColors>? other,
    double t,
  ) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      red: Color.lerp(red, other.red, t)!,
      black: Color.lerp(black, other.black, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      white: Color.lerp(white, other.white, t)!,
      profileBackground:
          Color.lerp(profileBackground, other.profileBackground, t)!,
    );
  }

  static const light = CustomColors(
    red: Color.fromRGBO(244, 67, 54, 1),
    black: Color.fromRGBO(0, 0, 0, 1),
    primary: Color.fromRGBO(67, 150, 151, 1),
    white: Color.fromRGBO(255, 255, 255, 1),
    profileBackground: Color.fromRGBO(239, 231, 255, 1),
  );
  static const dark = CustomColors(
    red: Color.fromRGBO(244, 67, 54, 1),
    black: Color.fromRGBO(0, 0, 0, 1),
    primary: Color.fromRGBO(67, 150, 151, 1),
    white: Color.fromRGBO(255, 255, 255, 1),
    profileBackground: Color.fromRGBO(239, 231, 255, 1),
  );
}
