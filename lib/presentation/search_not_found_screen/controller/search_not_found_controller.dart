import '../../../core/app_export.dart';
import '../models/search_not_found_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchNotFoundScreen.
///
/// This class manages the state of the SearchNotFoundScreen, including the
/// current searchNotFoundModelObj
class SearchNotFoundController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchNotFoundModel> searchNotFoundModelObj = SearchNotFoundModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
