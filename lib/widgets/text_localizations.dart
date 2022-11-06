import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:resume/widgets/text_local.dart';

class TextLocalizationsDelegate
    extends LocalizationsDelegate<TextLocalizations> {
  const TextLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      TextLocalizations.languages().contains(locale.languageCode);

  @override
  Future<TextLocalizations> load(Locale locale) {
    return SynchronousFuture<TextLocalizations>(TextLocalizations(locale));
  }

  @override
  bool shouldReload(TextLocalizationsDelegate old) => false;
}
