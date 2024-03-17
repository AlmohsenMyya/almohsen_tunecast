import 'package:almohsen_s_application13/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application13/widgets/custom_icon_button.dart';import 'package:almohsen_s_application13/core/utils/validation_functions.dart';import 'package:almohsen_s_application13/widgets/custom_text_form_field.dart';import 'package:almohsen_s_application13/widgets/custom_phone_number.dart';import 'package:country_pickers/country.dart';import 'package:almohsen_s_application13/widgets/custom_outlined_button.dart';import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/profile_controller.dart';
// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {ProfileScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 48.v), child: Column(children: [SizedBox(height: 3.v), SizedBox(height: 140.adaptSize, width: 140.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse, height: 140.adaptSize, width: 140.adaptSize, radius: BorderRadius.circular(70.h), alignment: Alignment.center), CustomIconButton(height: 35.adaptSize, width: 35.adaptSize, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgEditOnprimarycontainer))])), SizedBox(height: 24.v), _buildFullName(), SizedBox(height: 20.v), _buildName(), SizedBox(height: 20.v), _buildDateOfBirth(), SizedBox(height: 20.v), _buildEmail(), SizedBox(height: 20.v), _buildPhoneNumber(), Spacer(), _buildFrame()]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "msg_fill_your_profile".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFullName() { return CustomTextFormField(controller: controller.fullNameController, hintText: "lbl_full_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}); } 
/// Section Widget
Widget _buildName() { return CustomTextFormField(controller: controller.nameController, hintText: "lbl_nick_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}); } 
/// Section Widget
Widget _buildDateOfBirth() { return CustomTextFormField(controller: controller.dateOfBirthController, hintText: "lbl_date_of_birth".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgIconsGray500, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 60.v), contentPadding: EdgeInsets.only(left: 20.h, top: 21.v, bottom: 21.v)); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "lbl_email".tr, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgIconsGray50020x20, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(left: 20.h, top: 21.v, bottom: 21.v)); } 
/// Section Widget
Widget _buildPhoneNumber() { return Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController, onTap: (Country value) {controller.selectedCountry.value = value;})); } 
/// Section Widget
Widget _buildSkip() { return Expanded(child: CustomOutlinedButton(text: "lbl_skip".tr, margin: EdgeInsets.only(right: 10.h), onPressed: () {onTapSkip();})); } 
/// Section Widget
Widget _buildContinue() { return Expanded(child: CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 10.h), onPressed: () {onTapContinue();})); } 
/// Section Widget
Widget _buildFrame() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildSkip(), _buildContinue()]); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the createNewPinScreen when the action is triggered.
onTapContinue() { Get.toNamed(AppRoutes.createNewPinScreen, ); } 
 }
