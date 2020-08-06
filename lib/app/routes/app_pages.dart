import 'package:get/get.dart';
import 'package:sinclog_project/app/ui/pages/home/home_page.dart';
import 'package:sinclog_project/app/ui/pages/login_page/login_page.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}
