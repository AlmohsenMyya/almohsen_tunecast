import 'package:almohsen_s_application13/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application13/widgets/custom_pin_code_text_field.dart';import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/create_new_pin_controller.dart';class CreateNewPinScreen extends GetWidget<CreateNewPinController> {const CreateNewPinScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 138.v), child: Column(children: [Container(width: 331.h, margin: EdgeInsets.symmetric(horizontal: 24.h), child: Text("msg_add_a_pin_number".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 79.v), Padding(padding: EdgeInsets.only(right: 18.h), child: Obx(() => CustomPinCodeTextField(context: Get.context!, controller: controller.otpController.value, onChanged: (value) {}))), Spacer(flex: 35), CustomElevatedButton(text: "lbl_continue".tr, onPressed: () {onTapContinue();}), Spacer(flex: 64)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 49.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 10.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_create_new_pin".tr, margin: EdgeInsets.only(left: 16.h))); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
/// Navigates to the setFingerprintScreen when the action is triggered.
onTapContinue() { Get.toNamed(AppRoutes.setFingerprintScreen, ); } 
 }
