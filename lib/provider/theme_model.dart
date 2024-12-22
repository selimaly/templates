import 'package:flutter/material.dart';
import 'constant.dart';
import 'theme_Preferences.dart';




class ThemeModel extends ChangeNotifier {
  bool _isDark = false;
  final ThemePreferences _preferences = ThemePreferences();

  bool get isDark => _isDark;

  ThemeData get currentTheme => _isDark ? darkTheme : lightTheme;

  final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppConstants.primaryColor,
    scaffoldBackgroundColor: AppConstants.darkBackColor,
  );

  final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppConstants.primaryColor,
    scaffoldBackgroundColor: AppConstants.lightBackColor,
  );

  void toggleTheme(bool isDarkMode) {
    _isDark = isDarkMode;
    _preferences.setTheme(isDarkMode);
    notifyListeners();
  }

  ThemeModel() {
    getPreferences();
  }

  Future<void> getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }

  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }
}
