import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinclog_project/app/controller/login_controller.dart';

class ButtonLogin extends StatelessWidget {
  LoginController c;

  ButtonLogin(this.c);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: FlatButton(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          onPressed: () {
            c.doLogin();
          },
          child: Obx(() {
            return c.state == LoginState.loading
                ? Container(
                    height: 24, width: 24, child: CircularProgressIndicator())
                : Text(
                    "Entrar",
                    style: TextStyle(fontSize: 22),
                  );
          }),
        ));
  }
}
