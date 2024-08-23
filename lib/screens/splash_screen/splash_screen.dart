import 'package:basic_crud_app/constants/image_constants.dart';
import 'package:basic_crud_app/controllers/splash_screen/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 class SplashScreen extends StatelessWidget{
  SplashScreen({super.key});


  final SplashScreenController controller = Get.put(SplashScreenController());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Obx(
          () => AnimatedOpacity(
          opacity: controller.opacity.value,
          duration: const Duration(seconds: 3),
          child: AnimatedScale(
            scale: controller.scale.value,
            duration: const Duration(seconds: 3),
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(ImageConstants.logoPng),
            ),
          ),
        ),
        ) 
        
      ),
    );
  }
}


