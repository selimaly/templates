import 'package:adaptix/adaptix.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/provider/constant.dart';
import 'package:template/provider/constant_keys.dart';
import 'package:template/provider/theme_model.dart';
import 'package:template/widgets/container/border_container.dart';

class YesNo extends StatelessWidget {
  const YesNo({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(AppConstants.spaceSize.adaptedPx(context)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppConstants.borderRadius.adaptedPx(context)),
                color: Colors.green
              ),
              child: Center(child: Text(ConstantKeys.no.tr(), style: TextStyle(color: Colors.white),))
            )
          ),
        ),
        SizedBox(width: 7.adaptedPx(context),),
        Expanded(
          child: InkWell(
            onTap: onTap,
              child: Container(
                  padding: EdgeInsets.all(AppConstants.spaceSize.adaptedPx(context)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppConstants.borderRadius.adaptedPx(context)),
                      color: Colors.red
                  ),
                  child: Center(child: Text(ConstantKeys.yes.tr(), style: TextStyle(color: Colors.white),))
              )
          ),
        ),
      ],
    );
  }
}
