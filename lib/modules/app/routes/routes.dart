import 'package:get/get.dart';
import 'package:getx_pattern/modules/home/ui/home_page.dart';

import '../../auth/auth_binding.dart';
import '../../auth/ui/login_page.dart';

class Routes {
  static const initial = '/';
  static const home = '/home';

  static final pages = [
    GetPage(
      name: initial,
      page: () => LoginPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: home,
      page: () => HomePage(),
    ),
  ];
}
