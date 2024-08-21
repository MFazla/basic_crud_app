import 'package:flutter/material.dart';
import 'package:basic_crud_app/constants/image_constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();

}
class _SplashScreenState extends State<SplashScreen>{
  @override 
 void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            width: 300,
            height: 300,
            child: Image.asset(ImageConstants.logoPng)),
      ),
    );
  }
}