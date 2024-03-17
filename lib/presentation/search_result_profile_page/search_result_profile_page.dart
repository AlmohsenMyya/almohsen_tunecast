import 'widgets/fiftysixsection_item_widget.dart';import 'models/fiftysixsection_item_model.dart';import 'widgets/followingsection_item_widget.dart';import 'models/followingsection_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/search_result_profile_controller.dart';import 'models/search_result_profile_model.dart';
// ignore_for_file: must_be_immutable
class SearchResultProfilePage extends StatelessWidget {SearchResultProfilePage({Key? key}) : super(key: key);

SearchResultProfileController controller = Get.put(SearchResultProfileController(SearchResultProfileModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildFiftySixSection(), SizedBox(height: 24.v), _buildFollowingSection()]))])))); } 
/// Section Widget
Widget _buildFiftySixSection() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: controller.searchResultProfileModelObj.value.fiftysixsectionItemList.value.length, itemBuilder: (context, index) {FiftysixsectionItemModel model = controller.searchResultProfileModelObj.value.fiftysixsectionItemList.value[index]; return FiftysixsectionItemWidget(model, onTapArtist: () {onTapArtist();});})); } 
/// Section Widget
Widget _buildFollowingSection() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: controller.searchResultProfileModelObj.value.followingsectionItemList.value.length, itemBuilder: (context, index) {FollowingsectionItemModel model = controller.searchResultProfileModelObj.value.followingsectionItemList.value[index]; return FollowingsectionItemWidget(model, onTapArtist: () {onTapArtist();});})); } 
/// Navigates to the profileDetailsScreen when the action is triggered.
onTapArtist() { Get.toNamed(AppRoutes.profileDetailsScreen, ); } 
 }
