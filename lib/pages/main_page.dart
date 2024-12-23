import 'package:adaptix/adaptix.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template/pages/address/add_address.dart';
import 'package:template/pages/address/list_address.dart';
import 'package:template/pages/address/select_address.dart';
import 'package:template/provider/constant_keys.dart';
import 'package:template/widgets/button.dart';
import 'package:template/widgets/dialog/delete_dialog.dart';
import 'package:template/widgets/dialog/logout_dialog.dart';
import 'package:template/widgets/dialog/theme_dialog.dart';
import 'package:template/widgets/text_field/password_field.dart';
import 'package:template/widgets/text_field/phone_field.dart';
import 'package:template/widgets/text_field/price_field.dart';
import 'package:template/widgets/text_field/text_field.dart';

import '../widgets/dialog/language_dialog.dart';
import '../widgets/text_field/mail_field.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.adaptedPx(context), vertical: 10.adaptedPx(context)),
              child: Column(
                children: [
                  CustomButton(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListAddress()));
                  }, text: ConstantKeys.addAddress.tr()),
                  SizedBox(height: 10.adaptedPx(context),),
                  CustomButton(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SelectAddressPage()));
                  }, text: ConstantKeys.selectAddress.tr()),
                  SizedBox(height: 10.adaptedPx(context),),
                  CustomButton(onTap: (){
                    showDialog(
                      context: context,
                      builder: (context) => const LanguageChangeDialog(),
                    );
                  }, text: ConstantKeys.selectLang.tr()),
                  SizedBox(height: 10.adaptedPx(context),),
                  CustomButton(onTap: (){
                    showDialog(
                      context: context,
                      builder: (context) => const LogoutDialog(),
                    );
                  }, text: ConstantKeys.wannaLogout.tr()),
                  SizedBox(height: 10.adaptedPx(context),),
                  CustomButton(onTap: (){
                    showDialog(
                      context: context,
                      builder: (context) => const ThemeDialog(),
                    );
                  }, text: ConstantKeys.themeMode.tr()),
                  SizedBox(height: 10.adaptedPx(context),),
                  CustomButton(onTap: (){
                    showDialog(
                      context: context,
                      builder: (context) => const DeleteDialog(),
                    );
                  }, text: ConstantKeys.wannaDelete.tr()),
                ],
              ),
            ),
          )
      )
    );
  }
}
