import 'app_localizations.dart';

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get continueWithGoogle => 'Kontynuuj z Google';

  @override
  String get continueWithApple => 'Kontynuuj z Apple';

  @override
  String get continueAsAGuest => 'Kontynuuj jako Gość';

  @override
  String get welcomeMessage => 'Proszę zaloguj się, aby uzyskać dostęp do swojego konta i odblokować świat możliwości. \nTwoja podróż rozpoczyna się teraz, więc zaczynajmy!';
}
