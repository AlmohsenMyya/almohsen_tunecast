import 'package:almohsen_s_application13/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';import 'widgets/albumdetailslist_item_widget.dart';import 'models/albumdetailslist_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/album_details_controller.dart';class AlbumDetailsScreen extends GetWidget<AlbumDetailsController> {const AlbumDetailsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgImage255x250, height: 255.v, width: 250.h, radius: BorderRadius.circular(28.h)), SizedBox(height: 20.v), Text("lbl_sweetener".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 13.v), Text("lbl_ariana_grande".tr, style: CustomTextStyles.titleMediumPrimaryMedium), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_album".tr, style: CustomTextStyles.titleSmallGray70001Medium)), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl".tr, style: CustomTextStyles.titleSmallGray70001Medium)), Padding(padding: EdgeInsets.only(left: 12.h, bottom: 1.v), child: Text("lbl_2018".tr, style: CustomTextStyles.titleSmallGray70001Medium))]), SizedBox(height: 13.v), _buildPlayRow(), SizedBox(height: 24.v), Divider(), SizedBox(height: 22.v), _buildAutoLayoutHorizontalRow(), SizedBox(height: 23.v), _buildAlbumDetailsList()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 11.v)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v))]); } 
/// Section Widget
Widget _buildPlayRow() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgFavorite, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Spacer(flex: 18), CustomImageView(imagePath: ImageConstant.imgCategoriesPlaylist, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Spacer(flex: 18), CustomImageView(imagePath: ImageConstant.imgLightBulb, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Spacer(flex: 18), CustomImageView(imagePath: ImageConstant.imgCategoriesMore, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Spacer(flex: 44), CustomElevatedButton(height: 45.v, width: 112.h, text: "lbl_play".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgCategoriesplayComponentadditionalIcons, height: 20.adaptSize, width: 20.adaptSize)), buttonStyle: CustomButtonStyles.fillPrimaryTL22, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700_1, onPressed: () {onTapPlay();})]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontalRow() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_more_like_this".tr, style: theme.textTheme.headlineSmall), Padding(padding: EdgeInsets.only(bottom: 7.v), child: Text("lbl_see_all".tr, style: CustomTextStyles.titleMediumOnPrimaryContainer16))]); } 
/// Section Widget
Widget _buildAlbumDetailsList() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.albumDetailsModelObj.value.albumdetailslistItemList.value.length, itemBuilder: (context, index) {AlbumdetailslistItemModel model = controller.albumDetailsModelObj.value.albumdetailslistItemList.value[index]; return AlbumdetailslistItemWidget(model, onTapSongCard: () {onTapSongCard();});})); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapPlay() { Get.toNamed(AppRoutes.songPlayScreen, ); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard() { Get.toNamed(AppRoutes.songPlayScreen, ); } 
 }
