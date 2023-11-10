import 'package:flutter/material.dart';
import 'package:to_do_list/screens/home_screen.dart';
// import 'screens/login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:to_do_list/screens/login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'To do list',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale('pl'),
        Locale('en'),
      ],
      home: HomeScreen(),
    ),
  );
}
