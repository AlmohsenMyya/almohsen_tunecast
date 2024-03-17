import 'package:almohsen_s_application13/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application13/widgets/custom_pin_code_text_field.dart';import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/filled_otp_controller.dart';class FilledOtpScreen extends GetWidget<FilledOtpController> {const FilledOtpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 16.v), Text("msg_code_has_been_sent".tr, style: CustomTextStyles.titleMediumMedium), SizedBox(height: 61.v), Obx(() => CustomPinCodeTextField(context: Get.context!, controller: controller.otpController.value, onChanged: (value) {})), SizedBox(height: 61.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_resend_code_in".tr, style: CustomTextStyles.titleMediumff212121), TextSpan(text: "lbl_53".tr, style: CustomTextStyles.titleMediumffc10606), TextSpan(text: "lbl_s".tr, style: CustomTextStyles.titleMediumff212121)]), textAlign: TextAlign.left)])), bottomNavigationBar: _buildVerifyButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildVerifyButton() { return CustomElevatedButton(text: "lbl_verify".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 45.v), onPressed: () {onTapVerifyButton();}); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
/// Navigates to the createNewPasswordScreen when the action is triggered.
onTapVerifyButton() { Get.toNamed(AppRoutes.createNewPasswordScreen, ); } 
 }
