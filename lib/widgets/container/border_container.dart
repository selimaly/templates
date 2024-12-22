import 'package:adaptix/adaptix.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/provider/theme_model.dart';

import '../../provider/constant.dart';

class BorderContainer extends StatelessWidget {
  const BorderContainer({
    super.key,
    required this.child,
    this.onTap
  });

  final VoidCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeModel>(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(AppConstants.spaceSize.adaptedPx(context)),
        decoration: BoxDecoration(
          color: theme.isDark ? AppConstants.darkInputColor : AppConstants.lightInputColor,
          borderRadius: BorderRadius.circular(AppConstants.borderRadius.adaptedPx(context)),
          border: Border.all(
            color: theme.isDark ? AppConstants.darkInputBorderColor : AppConstants.lightInputBorderColor,
            width: 1.adaptedPx(context)
          )
        ),
        child: child,
      ),
    );
  }
}
