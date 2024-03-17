import 'package:almohsen_s_application13/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_leading_image.dart';import 'widgets/topalbumsgloballist_item_widget.dart';import 'models/topalbumsgloballist_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/top_albums_global_controller.dart';class TopAlbumsGlobalScreen extends GetWidget<TopAlbumsGlobalController> {const TopAlbumsGlobalScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v), child: Column(children: [_buildPriceStack(), SizedBox(height: 18.v), Text("msg_top_albums_global2".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 12.v), Text("msg_the_most_played".tr, style: CustomTextStyles.titleMediumMedium), SizedBox(height: 14.v), Text("msg_by_hearme_12_24_2022".tr, style: CustomTextStyles.titleSmallGray70001), SizedBox(height: 23.v), Divider(), SizedBox(height: 23.v), _buildTopAlbumsGlobalList()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOutlineArrow, margin: EdgeInsets.fromLTRB(24.h, 11.v, 376.h, 11.v), onTap: () {onTapImage();})); } 
/// Section Widget
Widget _buildPriceStack() { return SizedBox(height: 184.v, width: 380.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage184x380, height: 184.v, width: 380.h, radius: BorderRadius.circular(28.h), alignment: Alignment.center), Align(alignment: Alignment.center, child: SizedBox(width: 98.h, child: Text("msg_top_albums_global".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineSmallWhiteA700.copyWith(height: 1.20))))])); } 
/// Section Widget
Widget _buildTopAlbumsGlobalList() { return Padding(padding: EdgeInsets.only(left: 8.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: controller.topAlbumsGlobalModelObj.value.topalbumsgloballistItemList.value.length, itemBuilder: (context, index) {TopalbumsgloballistItemModel model = controller.topAlbumsGlobalModelObj.value.topalbumsgloballistItemList.value[index]; return TopalbumsgloballistItemWidget(model, onTapSongCard: () {onTapSongCard();});}))); } 

/// Navigates to the previous screen.
onTapImage() { Get.back(); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard() { Get.toNamed(AppRoutes.songPlayScreen, ); } 
 }
