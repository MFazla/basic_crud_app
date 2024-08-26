import 'package:basic_crud_app/screens/login_screen/login_screen.dart';
import 'package:basic_crud_app/screens/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

var appRoutes = [
  GetPage(
    name: "/",
    page: () => SplashScreen(),
  ),
  GetPage(
    name: "/login-screen",
    page: () => LoginScreen(),
  ),
];