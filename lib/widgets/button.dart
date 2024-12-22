import 'package:adaptix/adaptix.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text
  });

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.adaptedPx(context)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          color: AppConstants.primaryColor
        ),
        child: Center(
          child: Text(text, style: s16Medium.copyWith(color: Colors.black),),
        ),
      ),
    );
  }
}
