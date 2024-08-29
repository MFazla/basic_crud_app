import 'package:basic_crud_app/main.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  var obscureText = true.obs;

  //form key
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  //email text field controller
  TextEditingController emailController = TextEditingController();

  // password text field controller
  TextEditingController passwordController = TextEditingController();

  String email = " ";
  String password = " ";

  @override
  void onInit() {
    super.onInit();
  }

  // toggle password visibility
  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
  }

  void submitLogin() {
    if (loginFormKey.currentState!.validate()) {
      loginFormKey.currentState!.save();
      print("Email: $email");
      print("Password: $password");
    }
  }
}
