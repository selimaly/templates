import 'package:adaptix/adaptix.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/text_field/mail_field.dart';
import '../../widgets/text_field/password_field.dart';
import '../../widgets/text_field/phone_field.dart';
import '../../widgets/text_field/price_field.dart';
import '../../widgets/text_field/text_field.dart';

class TextFieldsPage extends StatefulWidget {
  const TextFieldsPage({super.key});

  @override
  State<TextFieldsPage> createState() => _TextFieldsPageState();
}

class _TextFieldsPageState extends State<TextFieldsPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController customController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController emailController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Fields"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("With Label"),
            SizedBox(height: 10.adaptedPx(context),),
            PasswordField(controller: passwordController, labelText: "Password"),
            SizedBox(height: 10.adaptedPx(context),),
            PhoneField(controller: phoneController, labelText: 'Phone number'),
            SizedBox(height: 10.adaptedPx(context),),
            PriceField(controller: priceController, labelText: "Price"),
            SizedBox(height: 10.adaptedPx(context),),
            CustomTextField(controller: customController, labelText: "Custom"),
            SizedBox(height: 10.adaptedPx(context),),
            EmailField(controller: emailController, labelText: 'Email Address',),
          ],
        ),
      ),
    );
  }
}
