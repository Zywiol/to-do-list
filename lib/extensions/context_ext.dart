import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  AppLocalizations get strings => AppLocalizations.of(this);
}
