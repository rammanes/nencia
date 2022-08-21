import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nencia/constants/app_color.dart';
import 'package:nencia/screens/auth/auth_page.dart';
import 'package:nencia/screens/auth/login_page.dart';
import 'package:nencia/screens/auth/register_page.dart';
import 'package:nencia/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<double> animation;

  _loadResources() async => null;

  @override
  void initState(){
    super.initState();
    _loadResources();
    animationController =  AnimationController(vsync: this,
        duration: const Duration(seconds: 2)
    )..forward();
    animation = CurvedAnimation(parent: animationController, curve: Curves.linear);
    Timer(const Duration(seconds: 3),(){
      Get.to(()=>Auth());
    });
  }
  @override
  void dispose(){
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  AppConstants.appWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
              scale: animationController,
              child:  Center(child: Image.asset('img/nencia_logo.png', height: 250, width: 250,)),
          ),
          const Text("Powered by Nencia", style: TextStyle(
            fontSize: 22, color: AppConstants.appPrimaryColor
          ),)
        ],
      ),
    );
  }
}
