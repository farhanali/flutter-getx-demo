import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:getx_pattern/modules/app/routes/routes.dart';
import 'package:meta/meta.dart';

import '../data/auth_repository.dart';
import '../data/user.dart';

class AuthController extends GetxController {
  final AuthRepository repository;

  AuthController({@required this.repository});

  Rx<User> _user = Rx<User>(null);
  get user => _user.value;
  set user(value) => _user.value = value;

  RxString _error = RxString(null);
  get error => _error.value;
  set error(value) => _error.value = value;

  RxBool _loading = false.obs;
  get loading => _loading.value;
  set loading(value) => _loading.value = value;

  void login(String email, String password) {
    loading = true;
    error = null;

    repository.login(email, password).then((value) {
      loading = false;

      if (value == null) {
        error = 'Login error';
        return;
      }

      user = value;
      Get.offAndToNamed(Routes.home);
    });
  }
}
