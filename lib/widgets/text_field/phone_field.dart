import 'package:adaptix/adaptix.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

import '../../provider/constant.dart';
import '../../provider/theme_model.dart';


class PhoneField extends StatelessWidget {
  PhoneField({
    super.key,
    required this.controller,
    required this.text
  });

  final TextEditingController controller;
  final String text;

  var maskFormatter = MaskTextInputFormatter(
      mask: '+993 ## ######',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeModel>(context);
    return TextFormField(
      controller: controller,
      inputFormatters: [maskFormatter],
      keyboardType: TextInputType.phone,
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
