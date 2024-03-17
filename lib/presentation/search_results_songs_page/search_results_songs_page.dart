import 'widgets/searchresultssongs_item_widget.dart';import 'models/searchresultssongs_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/search_results_songs_controller.dart';import 'models/search_results_songs_model.dart';
// ignore_for_file: must_be_immutable
class SearchResultsSongsPage extends StatelessWidget {SearchResultsSongsPage({Key? key}) : super(key: key);

SearchResultsSongsController controller = Get.put(SearchResultsSongsController(SearchResultsSongsModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), _buildSearchResultsSongs()])))); } 
/// Section Widget
Widget _buildSearchResultsSongs() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.searchResultsSongsModelObj.value.searchresultssongsItemList.value.length, itemBuilder: (context, index) {SearchresultssongsItemModel model = controller.searchResultsSongsModelObj.value.searchresultssongsItemList.value[index]; return SearchresultssongsItemWidget(model, onTapSongTitle: () {onTapSongTitle();});}))); } 
/// Navigates to the songDetailsScreen when the action is triggered.
onTapSongTitle() { Get.toNamed(AppRoutes.songDetailsScreen, ); } 
 }
