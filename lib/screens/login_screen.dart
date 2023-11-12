import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/login_button.dart';
import '../utils/my_colors.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
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
                  AppLocalizations.of(context).welcomeMessage,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const Gap(38),
              LoginButton(
                buttonColor: MyColors().red,
                buttonIconImageUrl: 'assets/google.svg',
                buttonText: AppLocalizations.of(context).continueWithGoogle,
              ),
              const Gap(19),
              LoginButton(
                buttonColor: MyColors().black,
                buttonIconImageUrl: 'assets/apple.svg',
                buttonText: AppLocalizations.of(context).continueWithApple,
                buttonBorderWidth: 1.0,
              ),
              const Gap(19),
              LoginButton(
                buttonColor: MyColors().primary,
                buttonIconImageUrl: 'assets/profile.svg',
                buttonText: AppLocalizations.of(context).continueAsAGuest,
              ),
              const Gap(244.36)
            ],
          ),
        ),
      ),
    );
  }
}
