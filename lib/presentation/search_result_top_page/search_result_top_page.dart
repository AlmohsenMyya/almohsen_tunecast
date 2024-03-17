import 'widgets/songlist_item_widget.dart';import 'models/songlist_item_model.dart';import 'widgets/teenagedreamlist_item_widget.dart';import 'models/teenagedreamlist_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/search_result_top_controller.dart';import 'models/search_result_top_model.dart';
// ignore_for_file: must_be_immutable
class SearchResultTopPage extends StatelessWidget {SearchResultTopPage({Key? key}) : super(key: key);

SearchResultTopController controller = Get.put(SearchResultTopController(SearchResultTopModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildSongList(), SizedBox(height: 16.v), _buildTeenageDreamList()]))]))))); } 
/// Section Widget
Widget _buildSongList() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.searchResultTopModelObj.value.songlistItemList.value.length, itemBuilder: (context, index) {SonglistItemModel model = controller.searchResultTopModelObj.value.songlistItemList.value[index]; return SonglistItemWidget(model, onTapSongCard: () {onTapSongCard();});})); } 
/// Section Widget
Widget _buildTeenageDreamList() { return Padding(padding: EdgeInsets.only(right: 9.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: controller.searchResultTopModelObj.value.teenagedreamlistItemList.value.length, itemBuilder: (context, index) {TeenagedreamlistItemModel model = controller.searchResultTopModelObj.value.teenagedreamlistItemList.value[index]; return TeenagedreamlistItemWidget(model);}))); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard() { Get.toNamed(AppRoutes.songPlayScreen, ); } 
 }
