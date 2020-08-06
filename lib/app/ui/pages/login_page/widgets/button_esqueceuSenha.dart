import 'package:flutter/material.dart';

class ButtonEsqueceuSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        "Esqueceu o usuario? ",
        style: TextStyle(
            color: Colors.white, decoration: TextDecoration.underline),
        textAlign: TextAlign.end,
      ),
    );
  }
}
