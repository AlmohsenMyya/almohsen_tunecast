import 'package:almohsen_s_application13/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application13/widgets/custom_outlined_button.dart';import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/lets_you_in_controller.dart';class LetsYouInScreen extends GetWidget<LetsYouInController> {const LetsYouInScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 47.v), child: Column(children: [SizedBox(height: 4.v), CustomImageView(imagePath: ImageConstant.imgGroup318, height: 200.v, width: 236.h, alignment: Alignment.centerRight, margin: EdgeInsets.only(right: 61.h)), SizedBox(height: 36.v), Text("lbl_let_s_you_in".tr, style: CustomTextStyles.displayMediumGray90001), SizedBox(height: 24.v), _buildContinueWithFacebookButton(), SizedBox(height: 16.v), _buildContinueWithGoogleButton(), SizedBox(height: 16.v), _buildContinueWithAppleButton(), SizedBox(height: 36.v), _buildAutoLayoutHorizontalRow(), SizedBox(height: 34.v), _buildSignInWithPasswordButton(), SizedBox(height: 31.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_don_t_have_an_account".tr, style: theme.textTheme.bodyMedium)), GestureDetector(onTap: () {onTapTxtSignUp();}, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_sign_up".tr, style: CustomTextStyles.titleSmallOnPrimaryContainer)))])])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOutlineArrow, margin: EdgeInsets.fromLTRB(24.h, 11.v, 376.h, 11.v), onTap: () {onTapImage();})); } 
/// Section Widget
Widget _buildContinueWithFacebookButton() { return CustomOutlinedButton(height: 60.v, text: "msg_continue_with_facebook".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgIconsGray50, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineBlueGray, buttonTextStyle: CustomTextStyles.titleMediumSemiBold); } 
/// Section Widget
Widget _buildContinueWithGoogleButton() { return CustomOutlinedButton(height: 60.v, text: "msg_continue_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineBlueGray, buttonTextStyle: CustomTextStyles.titleMediumSemiBold); } 
/// Section Widget
Widget _buildContinueWithAppleButton() { return CustomOutlinedButton(height: 60.v, text: "msg_continue_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgIcons, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineBlueGray, buttonTextStyle: CustomTextStyles.titleMediumSemiBold); } 
/// Section Widget
Widget _buildAutoLayoutHorizontalRow() { return Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 9.v, bottom: 11.v), child: SizedBox(width: 155.h, child: Divider())), Text("lbl_or".tr, style: CustomTextStyles.titleMediumGray70001), Padding(padding: EdgeInsets.only(top: 9.v, bottom: 11.v), child: SizedBox(width: 155.h, child: Divider()))])); } 
/// Section Widget
Widget _buildSignInWithPasswordButton() { return CustomElevatedButton(text: "msg_sign_in_with_password".tr, onPressed: () {onTapSignInWithPasswordButton();}); } 

/// Navigates to the previous screen.
onTapImage() { Get.back(); } 
/// Navigates to the signInScreen when the action is triggered.
onTapSignInWithPasswordButton() { Get.toNamed(AppRoutes.signInScreen, ); } 
/// Navigates to the signUpScreen when the action is triggered.
onTapTxtSignUp() { Get.toNamed(AppRoutes.signUpScreen, ); } 
 }
