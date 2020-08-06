import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinclog_project/app/controller/login_controller.dart';
import 'package:sinclog_project/app/data/provider/httpClient.dart';
import 'package:sinclog_project/app/repository/login_repository.dart';
import 'package:sinclog_project/app/ui/pages/login_page/widgets/button_esqueceuSenha.dart';
import 'package:sinclog_project/app/ui/pages/login_page/widgets/button_esqueceuusuario.dart';
import 'package:sinclog_project/app/ui/pages/login_page/widgets/button_login.dart';
import 'package:sinclog_project/app/ui/pages/login_page/widgets/textfield_email.dart';
import 'package:sinclog_project/app/ui/pages/login_page/widgets/textfield_senha.dart';
import 'package:sinclog_project/app/ui/themes/styles.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatelessWidget {
  LoginController c;
  final LoginRepository repository =
      LoginRepository(apiClient: HttpClient(httpClient: http.Client()));

  @override
  Widget build(BuildContext context) {
    c = Get.put(LoginController(repository: repository));

    return Scaffold(
        resizeToAvoidBottomPadding: true,
        resizeToAvoidBottomInset: true,
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromRGBO(91, 61, 153, 1),
                  Color.fromRGBO(10, 185, 214, 1)
                ])),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("SEJA \nBEM-VINDO", style: Styles.mainTitle()),
                      Icon(
                        Icons.add_shopping_cart,
                        size: 72,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      TextfieldEmail(c),
                      SizedBox(
                        height: 5,
                      ),
                      ButtonEsqueceuUsuario(),
                      SizedBox(
                        height: 25,
                      ),
                      TextfieldSenha(),
                      SizedBox(
                        height: 5,
                      ),
                      ButtonEsqueceuSenha(),
                      SizedBox(
                        height: 25,
                      ),
                      ButtonLogin(c),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Novo no Sinclog? "),
                          Text(
                            "Cadastre-se já",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                color: Colors.grey[200]),
                          )
                        ],
                      )
                    ],
                  )
                ])));
  }
}
