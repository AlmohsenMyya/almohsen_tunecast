import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/splash_controller.dart';class SplashScreen extends GetWidget<SplashController> {const SplashScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 5.v), CustomImageView(imagePath: ImageConstant.imgLogo, height: 160.v, width: 192.h)])))); } 
 }
