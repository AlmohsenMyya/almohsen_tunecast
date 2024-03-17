import 'package:almohsen_s_application13/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_title.dart';import 'widgets/followartistslist_item_widget.dart';import 'models/followartistslist_item_model.dart';import 'package:almohsen_s_application13/widgets/custom_outlined_button.dart';import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/follow_artists_controller.dart';class FollowArtistsScreen extends GetWidget<FollowArtistsController> {const FollowArtistsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 357.h, margin: EdgeInsets.only(right: 22.h), child: Text("msg_follow_your_favorite".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 32.v), _buildFollowArtistsList()])), bottomNavigationBar: _buildAutoLayoutVertical())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_follow_artists".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFollowArtistsList() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.followArtistsModelObj.value.followartistslistItemList.value.length, itemBuilder: (context, index) {FollowartistslistItemModel model = controller.followArtistsModelObj.value.followartistslistItemList.value[index]; return FollowartistslistItemWidget(model);})); } 
/// Section Widget
Widget _buildSkipButton() { return CustomOutlinedButton(width: 180.h, text: "lbl_skip".tr, onPressed: () {onTapSkipButton();}); } 
/// Section Widget
Widget _buildContinueButton() { return CustomElevatedButton(width: 180.h, text: "lbl_continue".tr, margin: EdgeInsets.only(left: 20.h), onPressed: () {onTapContinueButton();}); } 
/// Section Widget
Widget _buildAutoLayoutVertical() { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [_buildSkipButton(), _buildContinueButton()])); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkipButton() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapContinueButton() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
 }
