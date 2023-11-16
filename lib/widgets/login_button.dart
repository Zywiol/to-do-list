import 'package:flutter/material.dart';
import 'package:to_do_list/extensions/context_ext.dart';
import 'package:to_do_list/screens/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                color: context.customColor.white,
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
              child: Text(
                buttonText,
                style: context.themeData.textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
