import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/extensions/theme_colors_ext.dart';

extension ContextExt on BuildContext {
  AppLocalizations get strings => AppLocalizations.of(this);
  ThemeData get themeData => Theme.of(this);
  CustomColors get customColor => Theme.of(this).extension<CustomColors>()!;
}
