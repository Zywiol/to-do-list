import 'package:flutter/material.dart';
import 'package:to_do_list/extensions/theme_text_ext.dart';
import 'package:to_do_list/screens/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../extensions/theme_colors_ext.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key,
      required this.buttonColor,
      required this.buttonIconImageUrl,
      required this.buttonText,
      this.buttonBorderWidth = 0});

  final Color? buttonColor;
  final String buttonText;
  final String buttonIconImageUrl;
  final double buttonBorderWidth;

  @override
  Widget build(context) {
    final customeTextStyle = Theme.of(context).extension<CustomTextStyle>()!;
    final customColors = Theme.of(context).extension<CustomColors>();

    return SizedBox(
      width: 301,
      height: 54.32243,
      child: FilledButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            buttonColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                color: customColors!.buttonBorder,
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
              padding: const EdgeInsets.only(
                left: 9,
              ),
              child: Text(buttonText, style: customeTextStyle.textStyle),
            ),
          ],
        ),
      ),
    );
  }
}
