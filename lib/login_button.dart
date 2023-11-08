import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key,
      required this.buttonColor,
      required this.buttonIconImage,
      required this.buttonText});

  final Color buttonColor;
  final String buttonText;
  final Image buttonIconImage;

  @override
  Widget build(context) {
    return SizedBox(
      width: 301,
      height: 54.32243,
      child: FilledButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/google.png',
              width: 24,
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 9),
              child: Text(
                'Continue with Google',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
