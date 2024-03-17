import '../../../core/app_export.dart';import 'artistsearchresult_item_model.dart';/// This class defines the variables used in the [artist_search_result_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistSearchResultModel {Rx<List<ArtistsearchresultItemModel>> artistsearchresultItemList = Rx([ArtistsearchresultItemModel(theWeeknd:ImageConstant.imgImage66.obs,artistName: "The Weeknd".obs),ArtistsearchresultItemModel(theWeeknd:ImageConstant.imgImage67.obs,artistName: "Ariana Grande".obs),ArtistsearchresultItemModel(theWeeknd:ImageConstant.imgImage48.obs,artistName: "Katy Perry".obs),ArtistsearchresultItemModel(theWeeknd:ImageConstant.imgImage69.obs,artistName: "Acidrap".obs)]);

 }
