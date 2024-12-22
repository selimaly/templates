import 'package:adaptix/adaptix.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/provider/language_provider.dart';

import 'pages/main_page.dart';
import 'provider/theme_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('tr'), Locale('en'), Locale('ru')],
      path: 'assets/translation',
      fallbackLocale: Locale('tr'),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LanguageProvider()..loadLanguage()),
          ChangeNotifierProvider(create: (_) => ThemeModel()),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptixInitializer(
      configs: const AdaptixConfigs.canonical(),
      builder: (context) {
        return Consumer<LanguageProvider>(
          builder: (context, languageProvider, child) {
            return Consumer<ThemeModel>(
              builder: (context, themeNotifier, child) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  themeMode: themeNotifier.isDark ? ThemeMode.dark : ThemeMode.light,
                  darkTheme: themeNotifier.darkTheme,
                  theme: themeNotifier.lightTheme,
                  locale: languageProvider.locale,
                  supportedLocales: context.supportedLocales,
                  localizationsDelegates: context.localizationDelegates,
                  navigatorKey: navigatorKey,
                  home: const MainPage(),
                );
              },
            );
          },
        );
      },
    );
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
