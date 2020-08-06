import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sinclog_project/app/ui/pages/home/home_page.dart';
import 'package:sinclog_project/app/ui/themes/myTheme.dart';

import 'app/routes/app_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light));

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.LOGIN, //Rota inicial
    defaultTransition: Transition.fade, // Transição de telas padrão
    getPages:
        AppPages.pages, // Seu array de navegação contendo as rotas e suas pages
    debugShowMaterialGrid: false,
    title: 'iFix',
    theme: appThemeData,
    home: HomePage(), // Page inicial
  ));
}
