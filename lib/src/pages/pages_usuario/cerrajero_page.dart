import 'package:aplication_seekmant/src/widget/back_button.dart';
import 'package:flutter/material.dart';

class CerrajerpoPage extends StatelessWidget {
  const CerrajerpoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          leading: Builder(builder: (BuildContext context) {
            return backButton(context, Colors.white);
          }),
        ),
        body: Stack());
  }
}
