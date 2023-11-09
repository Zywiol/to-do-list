import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'To do list',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale('pl'),
        Locale('en'),
      ],
      home: LoginScreen(),
    ),
  );
}
