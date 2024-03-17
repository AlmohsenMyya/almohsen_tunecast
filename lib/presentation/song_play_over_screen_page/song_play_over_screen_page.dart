import 'widgets/songplayoverscreen_item_widget.dart';import 'models/songplayoverscreen_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/song_play_over_screen_controller.dart';import 'models/song_play_over_screen_model.dart';
// ignore_for_file: must_be_immutable
class SongPlayOverScreenPage extends StatelessWidget {SongPlayOverScreenPage({Key? key}) : super(key: key);

SongPlayOverScreenController controller = Get.put(SongPlayOverScreenController(SongPlayOverScreenModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), Column(children: [_buildSongPlayOverScreen(), SizedBox(height: 48.v), _buildAutoLayoutVertical()])])))); } 
/// Section Widget
Widget _buildSongPlayOverScreen() { return Padding(padding: EdgeInsets.only(left: 26.h, right: 22.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.songPlayOverScreenModelObj.value.songplayoverscreenItemList.value.length, itemBuilder: (context, index) {SongplayoverscreenItemModel model = controller.songPlayOverScreenModelObj.value.songplayoverscreenItemList.value[index]; return SongplayoverscreenItemWidget(model, onTapSongCard: () {onTapSongCard();});}))); } 
/// Section Widget
Widget _buildAutoLayoutVertical() { return GestureDetector(onTap: () {onTapAutoLayoutVertical();}, child: Container(width: double.maxFinite, padding: EdgeInsets.all(23.h), decoration: AppDecoration.outlineGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderTL32), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgSettings48x48, height: 48.adaptSize, width: 48.adaptSize, margin: EdgeInsets.only(bottom: 12.v)), Padding(padding: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 24.v), child: Text("msg_starboy_the_weeknd".tr, style: CustomTextStyles.titleMediumSemiBold)), CustomImageView(imagePath: ImageConstant.imgIconlyBoldPlayOnprimarycontainer, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 23.h, top: 14.v, bottom: 26.v)), CustomImageView(imagePath: ImageConstant.imgCategoriesNext, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 26.v))]))); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard() { Get.toNamed(AppRoutes.songPlayScreen, ); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapAutoLayoutVertical() { Get.toNamed(AppRoutes.songPlayScreen, ); } 
 }
