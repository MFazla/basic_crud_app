import 'package:basic_crud_app/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  double _opacity = 0.0;
  double _scale = 0.0;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Start the animation on init
    _controller.forward();

    // Handle opacity and scale changes over time
    _controller.addListener(() {
      setState(() {
        _opacity = _controller.value;
        _scale = _controller.value;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 3),
          child: AnimatedScale(
            scale: _scale,
            duration: const Duration(seconds: 3),
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(ImageConstants.logoPng),
            ),
          ),
        ),
        
      ),
    );
  }
}