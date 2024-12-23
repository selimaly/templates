import 'package:adaptix/adaptix.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/constant.dart';
import '../../provider/theme_model.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.controller,
    this.hintText,
    this.labelText,
  });

  final TextEditingController controller;
  final String? hintText, labelText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeModel>(context);
    return TextField(
      controller: widget.controller,
      obscureText: _isObscured,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
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
        suffixIcon: IconButton(
          icon: Icon(
            _isObscured ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured; // Toggle the state
            });
          },
        ),
      ),
    );
  }
}
