import 'package:adaptix/adaptix.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/constant.dart';
import '../../provider/theme_model.dart';

class PriceField extends StatelessWidget {
  const PriceField({
    super.key,
    required this.controller,
    required this.text
  });

  final TextEditingController controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeModel>(context);
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: text,
        filled: true,
        fillColor: theme.isDark? AppConstants.darkInputColor : AppConstants.lightInputColor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.borderRadius.adaptedPx(context)),
            borderSide: BorderSide(
                color: theme.isDark ? AppConstants.darkInputBorderColor : AppConstants.lightInputBorderColor,
                width: 1.adaptedPx(context)
            )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius.adaptedPx(context)),
          borderSide: BorderSide(
            color: AppConstants.primaryColor,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
