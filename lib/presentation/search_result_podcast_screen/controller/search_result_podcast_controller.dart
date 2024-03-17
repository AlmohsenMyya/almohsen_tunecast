import '../../../core/app_export.dart';import '../models/search_result_podcast_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchResultPodcastScreen.
///
/// This class manages the state of the SearchResultPodcastScreen, including the
/// current searchResultPodcastModelObj
class SearchResultPodcastController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchResultPodcastModel> searchResultPodcastModelObj = SearchResultPodcastModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
