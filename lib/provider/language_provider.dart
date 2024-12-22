import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:easy_localization/easy_localization.dart';

import '../main.dart';

class LanguageProvider with ChangeNotifier {
  Locale _locale = Locale('tr');

  Locale get locale => _locale;

  Future<void> setLanguage(String languageCode) async {
    _locale = Locale(languageCode);

    // Update EasyLocalization's current locale
    await EasyLocalization.of(navigatorKey.currentContext!)?.setLocale(_locale);

    await _saveLanguage(languageCode);
    notifyListeners(); // Notify listeners about the locale change
  }

  Future<void> loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('languageCode') ?? 'tr';
    _locale = Locale(languageCode);

    // Ensure EasyLocalization reflects the stored locale
    await EasyLocalization.of(navigatorKey.currentContext!)?.setLocale(_locale);

    notifyListeners();
  }

  Future<void> _saveLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('languageCode', languageCode);
  }
}
