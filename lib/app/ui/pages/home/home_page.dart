import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alunos'),
          leading: Icon(Icons.chevron_left),
          centerTitle: true,
          primary: true,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.list),
              onPressed: () {},
            )
          ],
          titleSpacing: 0,
          actionsIconTheme: IconThemeData(),
        ),
        backgroundColor: Colors.grey[100],
        body: Container());
  }
}
