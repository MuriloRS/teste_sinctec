import 'package:flutter/material.dart';

class ButtonEsqueceuUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        "Esqueceu a senha? ",
        style: TextStyle(
            color: Colors.white, decoration: TextDecoration.underline),
        textAlign: TextAlign.end,
      ),
    );
  }
}
