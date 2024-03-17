import '../../../core/app_export.dart';
import '../models/search_type_keyword_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchTypeKeywordScreen.
///
/// This class manages the state of the SearchTypeKeywordScreen, including the
/// current searchTypeKeywordModelObj
class SearchTypeKeywordController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchTypeKeywordModel> searchTypeKeywordModelObj =
      SearchTypeKeywordModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
