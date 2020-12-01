import 'package:get/get.dart';

import 'controller/auth_controller.dart';
import 'data/auth_repository.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
        () => AuthController(repository: AuthRepository()));
  }
}
