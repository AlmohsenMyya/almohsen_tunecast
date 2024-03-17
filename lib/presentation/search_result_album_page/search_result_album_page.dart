import 'widgets/searchresultalbum_item_widget.dart';import 'models/searchresultalbum_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/search_result_album_controller.dart';import 'models/search_result_album_model.dart';
// ignore_for_file: must_be_immutable
class SearchResultAlbumPage extends StatelessWidget {SearchResultAlbumPage({Key? key}) : super(key: key);

SearchResultAlbumController controller = Get.put(SearchResultAlbumController(SearchResultAlbumModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 21.v), _buildSearchResultAlbum()])))); } 
/// Section Widget
Widget _buildSearchResultAlbum() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 267.v, crossAxisCount: 2, mainAxisSpacing: 12.h, crossAxisSpacing: 12.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.searchResultAlbumModelObj.value.searchresultalbumItemList.value.length, itemBuilder: (context, index) {SearchresultalbumItemModel model = controller.searchResultAlbumModelObj.value.searchresultalbumItemList.value[index]; return SearchresultalbumItemWidget(model, onTapCardBig: () {onTapCardBig();});}))); } 
/// Navigates to the albumDetailsScreen when the action is triggered.
onTapCardBig() { Get.toNamed(AppRoutes.albumDetailsScreen, ); } 
 }
