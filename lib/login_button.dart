import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/my_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key,
      required this.buttonColor,
      required this.buttonIconImageUrl,
      required this.buttonText,
      this.buttonBorderWidth = 0});

  final Color buttonColor;
  final String buttonText;
  final String buttonIconImageUrl;
  final double buttonBorderWidth;

  @override
  Widget build(context) {
    return SizedBox(
      width: 301,
      height: 54.32243,
      child: FilledButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            buttonColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                color: MyColors().white,
                width: buttonBorderWidth,
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              buttonIconImageUrl,
              width: 24,
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Text(
                buttonText,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
