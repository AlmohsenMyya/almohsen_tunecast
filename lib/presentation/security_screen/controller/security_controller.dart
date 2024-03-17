import '../../../core/app_export.dart';import '../models/security_model.dart';import 'package:flutter/material.dart';/// A controller class for the SecurityScreen.
///
/// This class manages the state of the SecurityScreen, including the
/// current securityModelObj
class SecurityController extends GetxController {TextEditingController passwordController = TextEditingController();

Rx<SecurityModel> securityModelObj = SecurityModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

Rx<bool> isSelectedSwitch2 = false.obs;

@override void onClose() { super.onClose(); passwordController.dispose(); } 
 }
