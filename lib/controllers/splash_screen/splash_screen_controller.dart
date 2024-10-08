import 'package:get/get.dart';
class SplashScreenController extends GetxController {
  var opacity = (0.0).obs;
  var scale = (0.0).obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 1), () {
      opacity.value = 1;
      scale.value = 1;
      Future.delayed(const Duration(seconds: 2), () {
        navigateToNextScreen();
      });
    });
  }

  // navigate to login screen or home screen
  void navigateToNextScreen() {
    Get.offNamed("/login-screen");
  }
}