import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.googleButton,
    required this.appleButton,
    required this.guestButton,
    required this.buttonBorder,
    required this.profileBackground,
  });

  final Color googleButton;
  final Color appleButton;
  final Color guestButton;
  final Color buttonBorder;
  final Color profileBackground;

  @override
  CustomColors copyWith({
    Color? googleButton,
    Color? appleButton,
    Color? guestButton,
    Color? buttonBorder,
    Color? profileBackground,
  }) {
    return CustomColors(
      googleButton: googleButton ?? this.googleButton,
      appleButton: appleButton ?? this.appleButton,
      guestButton: googleButton ?? this.guestButton,
      buttonBorder: buttonBorder ?? this.buttonBorder,
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
      googleButton: Color.lerp(googleButton, other.googleButton, t)!,
      appleButton: Color.lerp(appleButton, other.appleButton, t)!,
      guestButton: Color.lerp(guestButton, other.guestButton, t)!,
      buttonBorder: Color.lerp(buttonBorder, other.buttonBorder, t)!,
      profileBackground:
          Color.lerp(profileBackground, other.profileBackground, t)!,
    );
  }

  static const light = CustomColors(
    googleButton: Color.fromRGBO(244, 67, 54, 1),
    appleButton: Color.fromRGBO(0, 0, 0, 1),
    guestButton: Color.fromRGBO(67, 150, 151, 1),
    buttonBorder: Color.fromRGBO(255, 255, 255, 1),
    profileBackground: Color.fromRGBO(239, 231, 255, 1),
  );
  static const dark = CustomColors(
    googleButton: Color.fromRGBO(244, 67, 54, 1),
    appleButton: Color.fromRGBO(0, 0, 0, 1),
    guestButton: Color.fromRGBO(67, 150, 151, 1),
    buttonBorder: Color.fromRGBO(255, 255, 255, 1),
    profileBackground: Color.fromRGBO(239, 231, 255, 1),
  );
}
