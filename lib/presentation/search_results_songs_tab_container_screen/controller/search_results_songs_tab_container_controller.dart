import '../../../core/app_export.dart';
import '../models/search_results_songs_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchResultsSongsTabContainerScreen.
///
/// This class manages the state of the SearchResultsSongsTabContainerScreen, including the
/// current searchResultsSongsTabContainerModelObj
class SearchResultsSongsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<SearchResultsSongsTabContainerModel>
      searchResultsSongsTabContainerModelObj =
      SearchResultsSongsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 7));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
