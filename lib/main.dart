import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:to_do_list/extensions/theme_colors_ext.dart';
import 'package:to_do_list/screens/login_screen.dart';
import 'package:to_do_list/theme/dark_theme.dart';
import 'package:to_do_list/theme/light_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Przesuń tę linię na początek
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      title: 'To do list',
      theme: lightTheme.copyWith(extensions: <ThemeExtension<dynamic>>[
        CustomColors.light,
      ]),
      darkTheme: darkTheme.copyWith(extensions: <ThemeExtension<dynamic>>[
        CustomColors.dark,
      ]),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale('pl'),
        Locale('en'),
      ],
      home: LoginScreen(),
    ),
  );
}
