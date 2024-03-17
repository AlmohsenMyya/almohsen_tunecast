import '../../../core/app_export.dart';import '../models/artist_search_result_model.dart';import 'package:flutter/material.dart';/// A controller class for the ArtistSearchResultScreen.
///
/// This class manages the state of the ArtistSearchResultScreen, including the
/// current artistSearchResultModelObj
class ArtistSearchResultController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ArtistSearchResultModel> artistSearchResultModelObj = ArtistSearchResultModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
