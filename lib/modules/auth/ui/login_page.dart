import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../app/widgets/loading_widget.dart';
import '../controller/auth_controller.dart';

// ignore: must_be_immutable
class LoginPage extends GetView<AuthController> {
  String email;
  String password;
  double width = Get.width * .20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<AuthController>(
        builder: (controller) => Center(
          child: Container(
            width: width,
            child: controller.loading
                ? LoadingWidget()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        onChanged: (value) => email = value,
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        onChanged: (value) => password = value,
                        obscureText: true,
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.teal,
                        child: MaterialButton(
                          height: 60,
                          minWidth: width,
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: () => controller.login(email, password),
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      if (controller.error != null)
                        Text(
                          controller.error,
                          style: TextStyle(color: Colors.red),
                        ),
                      if (controller.user != null)
                        Text(
                          'User: ${controller.user.name}',
                          style: TextStyle(color: Colors.green),
                        ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
