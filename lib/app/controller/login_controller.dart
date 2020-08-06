import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:sinclog_project/app/repository/login_repository.dart';
import 'package:toast/toast.dart';

enum LoginState { initial, loading, done, error }

class LoginController extends GetxController {
  final LoginRepository repository;
  LoginController({@required this.repository}) : assert(repository != null);

  final _state = LoginState.initial.obs;
  set state(value) => this._state.value = value;
  get state => this._state.value;

  String email = '';
  String password = '';

  doLogin() async {
    this._state.value = LoginState.loading;

    if (!this.email.isNotEmpty) {
      this._state.value = LoginState.error;

      Get.snackbar(
        "Erro",
        "Preencha todos os campos!",
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
    } else {
      dynamic result = await repository.doLogin(email, password);

      if (result) {
        Get.offAllNamed("/home");

        this._state.value = LoginState.done;
      }
    }
  }
}
