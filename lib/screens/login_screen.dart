import 'package:flutter/material.dart';
import 'package:to_do_list/assets/app_images.dart';
import 'package:to_do_list/extensions/context_ext.dart';
import 'package:to_do_list/widgets/login_button.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: context.themeData.colorScheme.background,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: context.themeData.colorScheme.background,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Gap(172.78),
              SvgPicture.asset(AppImages.appLogo),
              const Gap(24.88),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 25,
                ),
                child: _WelcomeText(
                  string: context.strings,
                  themeData: context.themeData,
                ),
              ),
              const Gap(38),
              LoginButton(
                buttonColor: context.customColor.red,
                buttonIconImageUrl: AppImages.googleLogo,
                buttonText: context.strings.continueWithGoogle,
              ),
              const Gap(19),
              LoginButton(
                buttonColor: context.customColor.black,
                buttonIconImageUrl: AppImages.appleLogo,
                buttonText: context.strings.continueWithApple,
                buttonBorderWidth: 1.0,
              ),
              const Gap(19),
              LoginButton(
                buttonColor: context.customColor.primary,
                buttonIconImageUrl: AppImages.guestIcon,
                buttonText: context.strings.continueAsGuest,
              ),
              const Gap(244.36)
            ],
          ),
        ),
      ),
    );
  }
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText({
    super.key,
    required this.string,
    required this.themeData,
  });

  final AppLocalizations string;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Text(
      context.strings.welcomeMessage,
      textAlign: TextAlign.center,
      style: context.themeData.textTheme.bodySmall,
    );
  }
}
