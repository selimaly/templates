import 'dart:ui';

import 'package:adaptix/adaptix.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:template/provider/constant.dart';
import 'package:template/provider/constant_keys.dart';
import 'package:template/widgets/button.dart';
import 'package:template/widgets/dialog/yes_no.dart';
import '../../provider/language_provider.dart';
import '../../provider/theme_model.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({Key? key}) : super(key: key);

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
                  child: Center(child: Text(ConstantKeys.wannaLogout.tr())),
                ),
                SizedBox(height: 10.adaptedPx(context),),
                YesNo(onTap: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }

}
