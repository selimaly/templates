import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogsPage extends StatefulWidget {
  const DialogsPage({super.key});

  @override
  State<DialogsPage> createState() => _DialogsPageState();
}

class _DialogsPageState extends State<DialogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialogs"),
      ),

    );
  }
}
