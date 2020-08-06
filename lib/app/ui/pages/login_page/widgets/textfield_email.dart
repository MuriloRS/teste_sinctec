import 'package:flutter/material.dart';
import 'package:sinclog_project/app/controller/login_controller.dart';
import 'package:sinclog_project/app/ui/themes/styles.dart';

class TextfieldEmail extends StatelessWidget {
  LoginController c;
  TextEditingController emailController = TextEditingController();

  TextfieldEmail(this.c);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      onEditingComplete: () {
        c.email = emailController.text;
      },
      decoration: Styles.inputDecoration(
          'Email',
          Icon(
            Icons.email,
            color: Colors.white,
          )),
    );
  }
}
