import 'package:flutter/material.dart';
import 'package:basic_crud_app/constants/image_constants.dart';
import 'package:get/get.dart';
import 'package:basic_crud_app/controllers/login_screen/login_screen_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginScreenController loginScreenController =
      Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: loginScreenController.loginFormKey,
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  ImageConstants.logoPng,
                  height: 200,
                  width: 300,
                ),
              ),
              const Text(
                "Hello Again!",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Welcome back, you've been missed!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  controller: loginScreenController.emailController,
                  validator: (value) {
                    if (value!.isEmail) {
                      return "Email cannot be empty";
                    } else if (!value.isEmail) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                  onSaved: (newValue) =>
                      loginScreenController.email = newValue!,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    controller: loginScreenController.passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      }
                      return null;
                    },
                    onSaved: (newValue) =>
                        loginScreenController.password = newValue!,
                    decoration: InputDecoration(
                        suffixIcon: Obx(() => IconButton(
                              icon: loginScreenController.obscureText.value
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                              onPressed: () {
                                loginScreenController
                                    .togglePasswordVisibility();
                              },
                            )),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  )),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        loginScreenController.submitLogin();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    " Sign Up",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
