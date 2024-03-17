import '../../../core/app_export.dart';import '../models/filled_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the FilledOtpScreen.
///
/// This class manages the state of the FilledOtpScreen, including the
/// current filledOtpModelObj
class FilledOtpController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<FilledOtpModel> filledOtpModelObj = FilledOtpModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
@override void onReady() { Get.toNamed(AppRoutes.createNewPasswordScreen, ); } 
 }
