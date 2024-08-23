import 'package:flutter/material.dart';
import 'package:basic_crud_app/screens/splash_screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:basic_crud_app/routes/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      getPages: appRoutes,
      initialRoute: "/",
    );
  }
}
