import '../../../core/app_export.dart';import 'songlist_item_model.dart';import 'teenagedreamlist_item_model.dart';/// This class defines the variables used in the [search_result_top_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultTopModel {Rx<List<SonglistItemModel>> songlistItemList = Rx([SonglistItemModel(handsome:ImageConstant.imgImage27.obs,songTitle: "HANDSOME".obs,details: "Warren Hue".obs,overflowMenu:ImageConstant.imgOverflowMenuOnprimarycontainer.obs,hANDSOME1:ImageConstant.imgCategoriesMore.obs),SonglistItemModel(handsome:ImageConstant.imgImage52.obs,songTitle: "Firework Cover".obs,details: "The Sappear".obs,overflowMenu:ImageConstant.imgOverflowMenuOnprimarycontainer.obs,hANDSOME1:ImageConstant.imgVectorGray90001.obs)]);

Rx<List<TeenagedreamlistItemModel>> teenagedreamlistItemList = Rx(List.generate(1,(index) => TeenagedreamlistItemModel()));

 }
