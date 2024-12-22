import 'dart:ui';

import 'package:adaptix/adaptix.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:template/provider/constant.dart';
import 'package:template/provider/constant_keys.dart';
import 'package:template/widgets/button.dart';
import '../../provider/language_provider.dart';
import '../../provider/theme_model.dart';

class LanguageChangeDialog extends StatelessWidget {
  const LanguageChangeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeModel>(context);
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.adaptedPx(context)),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10.adaptedPx(context)),
            decoration: BoxDecoration(
              color: theme.isDark
                  ? AppConstants.darkBackColor
                  : AppConstants.lightBackColor,
              borderRadius: BorderRadius.circular(
                  AppConstants.borderRadius.adaptedPx(context)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Adjust the dialog size to fit content
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 12.adaptedPx(context),
                      vertical: 12.adaptedPx(context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Text(ConstantKeys.selectLang.tr()),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 24.adaptedPx(context),
                          width: 24.adaptedPx(context),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                            BorderRadius.circular(5.adaptedPx(context)),
                          ),
                          child: Icon(
                            Icons.close,
                            size: 16.5.adaptedPx(context),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(color: AppConstants.dividerColor),
                _buildLanguageOption(context, 'tr', 'assets/icon/flag_tm.png', 'Türkmençe'),
                _buildLanguageOption(context, 'ru', 'assets/icon/flag_ru.png', 'Русский'),
                _buildLanguageOption(context, 'en', 'assets/icon/flag_en.png', 'English'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageOption(BuildContext context, String languageCode, String flag, String languageName) {
    final languageProvider = Provider.of<LanguageProvider>(context, listen: false);
    return ListTile(
      leading: Image.asset(flag, height: 24.adaptedPx(context),),
      title: Text(languageName),
      onTap: () async {
        await languageProvider.setLanguage(languageCode);
        Navigator.pop(context);
      },
    );
  }
}
