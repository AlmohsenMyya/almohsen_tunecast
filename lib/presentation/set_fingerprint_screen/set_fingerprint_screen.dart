import 'package:almohsen_s_application13/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application13/widgets/custom_outlined_button.dart';import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/set_fingerprint_controller.dart';class SetFingerprintScreen extends GetWidget<SetFingerprintController> {const SetFingerprintScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 48.v), child: Column(children: [SizedBox(height: 47.v), Container(width: 323.h, margin: EdgeInsets.symmetric(horizontal: 28.h), child: Text("msg_add_a_fingerprint".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), Spacer(flex: 49), CustomImageView(imagePath: ImageConstant.imgVector236x228, height: 236.v, width: 228.h), Spacer(flex: 50), Container(width: 324.h, margin: EdgeInsets.symmetric(horizontal: 27.h), child: Text("msg_please_put_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 73.v), _buildFrame()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "msg_set_your_fingerprint".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFrame() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(text: "lbl_skip".tr, margin: EdgeInsets.only(right: 10.h), onPressed: () {onTapSkip();})), Expanded(child: CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 10.h), onPressed: () {onTapContinue();}))]); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the followArtistsScreen when the action is triggered.
onTapContinue() { Get.toNamed(AppRoutes.followArtistsScreen, ); } 
 }
