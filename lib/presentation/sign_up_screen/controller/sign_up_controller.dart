import '../../../core/app_export.dart';import '../models/sign_up_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> rememberMe = false.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.letsYouInScreen, ); } 
 }
