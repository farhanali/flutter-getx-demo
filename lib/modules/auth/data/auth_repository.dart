import 'user.dart';

class AuthRepository {
  Future<User> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 3));
    return (email == 'farhan@mashkor.com' && password == '123456')
        ? User(name: 'Farhan Ali', email: 'farhan@mashkor.com')
        : null;
  }
}
