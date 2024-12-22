import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/provider/constant_keys.dart';
import '../../provider/constant.dart';
import '../../provider/theme_model.dart';

class ThemeDialog extends StatelessWidget {
  const ThemeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeModel>(context);
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: theme.isDark ? AppConstants.darkBackColor : AppConstants.lightBackColor,
              borderRadius: BorderRadius.circular(AppConstants.borderRadius),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Adjust the dialog size to fit content
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Text("Select Theme", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(
                            Icons.close,
                            size: 16.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: AppConstants.dividerColor),
                _buildOption(context, const Icon(Icons.light_mode), ConstantKeys.lightMode.tr(), false),
                _buildOption(context, const Icon(Icons.dark_mode), ConstantKeys.darkMode.tr(), true),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOption(BuildContext context, Icon icon, String themeName, bool isDarkMode) {
    final themeModel = Provider.of<ThemeModel>(context, listen: false);
    return ListTile(
      leading: icon,
      title: Text(themeName),
      onTap: () async {
        themeModel.isDark = isDarkMode;
        Navigator.pop(context);
      },
    );
  }
}
