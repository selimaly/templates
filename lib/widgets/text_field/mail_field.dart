import 'package:adaptix/adaptix.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/constant.dart';
import '../../provider/theme_model.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeModel>(context);
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: hintText,
        filled: true,
        fillColor: theme.isDark ? AppConstants.darkInputColor : AppConstants.lightInputColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius.adaptedPx(context)),
          borderSide: BorderSide(
            color: theme.isDark ? AppConstants.darkInputBorderColor : AppConstants.lightInputBorderColor,
            width: 1.adaptedPx(context),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius.adaptedPx(context)),
          borderSide: BorderSide(
            color: AppConstants.primaryColor,
            width: 1.0,
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        // Simple email validation pattern
        final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
        if (!emailRegex.hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
    );
  }
}
