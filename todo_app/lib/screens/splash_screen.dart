

import 'package:flutter/material.dart';
import 'package:work_shop1/core/constants/color_constants.dart';
import 'package:work_shop1/core/constants/constants.dart';
import 'package:work_shop1/screens/login_screen.dart';




class SplashScreen extends StatefulWidget  {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? feedingAnimation;
  @override
  void initState() {
  animationController=AnimationController(vsync: this,duration: const Duration(milliseconds: 600));
  feedingAnimation=Tween<double>(begin: 0.2,end: 1).animate(animationController!);
    goToLoginScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kWhiteColor,
      body: Center(
        child: Image.asset(ConstantImages.kLogoImage),
      ),
    );
  }

  void goToLoginScreen()
  {
    Future.delayed(Duration(seconds: 3),
    (){
      Navigator.pushReplacement(context ,
          MaterialPageRoute(builder: (context) => LoginScreen(),));
    });
  }
}
