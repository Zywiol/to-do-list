import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/login_button.dart';
import 'my_colors.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(color: MyColors().backgroundLight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 172.78),
                child: Image.asset('assets/logo.png'),
              ),
              const Gap(24.88),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 25),
                child: Text(
                  'Please login in access your account and unlock a\n'
                  'world of possibilities. Your journey begins now, so\n'
                  "let's get started!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: MyColors().bodyFont,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 1.5),
                ),
              ),
              const Gap(38),
              LoginButton(
                buttonColor: MyColors().red,
                buttonIconImageUrl: 'assets/google.png',
                buttonText: 'Continue with Google',
              ),
              const Gap(19),
              LoginButton(
                buttonColor: MyColors().black,
                buttonIconImageUrl: 'assets/apple.png',
                buttonText: 'Continue with Apple',
                buttonBorderWidth: 1.0,
              ),
              const Gap(19),
              LoginButton(
                buttonColor: MyColors().primary,
                buttonIconImageUrl: 'assets/profile.png',
                buttonText: 'Continue as a Guest',
              ),
              const Gap(244.36)
            ],
          ),
        ),
      ),
    );
  }
}
