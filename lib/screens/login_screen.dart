import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/login_button.dart';
import '../extensions/theme_colors_ext.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    final customColors = Theme.of(context).extension<CustomColors>()!;
    final string = AppLocalizations.of(context);
    final themesData = Theme.of(context);
    return Scaffold(
      backgroundColor: themesData.colorScheme.background,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: themesData.colorScheme.background,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Gap(172.78),
              SvgPicture.asset('assets/logo.svg'),
              const Gap(24.88),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 25,
                ),
                child: Text(
                  string.welcomeMessage,
                  textAlign: TextAlign.center,
                  style: themesData.textTheme.bodySmall,
                ),
              ),
              const Gap(38),
              LoginButton(
                buttonColor: customColors.googleButton,
                buttonIconImageUrl: 'assets/google.svg',
                buttonText: string.continueWithGoogle,
              ),
              const Gap(19),
              LoginButton(
                buttonColor: customColors.appleButton,
                buttonIconImageUrl: 'assets/apple.svg',
                buttonText: string.continueWithApple,
                buttonBorderWidth: 1.0,
              ),
              const Gap(19),
              LoginButton(
                buttonColor: customColors.guestButton,
                buttonIconImageUrl: 'assets/profile.svg',
                buttonText: string.continueAsAGuest,
              ),
              const Gap(244.36)
            ],
          ),
        ),
      ),
    );
  }
}
