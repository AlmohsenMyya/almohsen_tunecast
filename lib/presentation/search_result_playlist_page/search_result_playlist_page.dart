import 'widgets/searchresultplaylist_item_widget.dart';import 'models/searchresultplaylist_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/search_result_playlist_controller.dart';import 'models/search_result_playlist_model.dart';
// ignore_for_file: must_be_immutable
class SearchResultPlaylistPage extends StatelessWidget {SearchResultPlaylistPage({Key? key}) : super(key: key);

SearchResultPlaylistController controller = Get.put(SearchResultPlaylistController(SearchResultPlaylistModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), _buildSearchResultPlaylist()])))); } 
/// Section Widget
Widget _buildSearchResultPlaylist() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 249.v, crossAxisCount: 1, mainAxisSpacing: 1.h, crossAxisSpacing: 1.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.searchResultPlaylistModelObj.value.searchresultplaylistItemList.value.length, itemBuilder: (context, index) {SearchresultplaylistItemModel model = controller.searchResultPlaylistModelObj.value.searchresultplaylistItemList.value[index]; return SearchresultplaylistItemWidget(model, onTapCardBig: () {onTapCardBig();});}))); } 
/// Navigates to the playlistDetailsOneScreen when the action is triggered.
onTapCardBig() { Get.toNamed(AppRoutes.playlistDetailsOneScreen, ); } 
 }
