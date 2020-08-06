import 'package:flutter/material.dart';
import 'package:sinclog_project/app/ui/themes/styles.dart';

class TextfieldSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: Styles.inputDecoration(
          'Senha',
          Icon(
            Icons.lock,
            color: Colors.white,
          )),
    );
  }
}
