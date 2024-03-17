import '../../../core/app_export.dart';import 'searchresultplaylist_item_model.dart';/// This class defines the variables used in the [search_result_playlist_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultPlaylistModel {Rx<List<SearchresultplaylistItemModel>> searchresultplaylistItemList = Rx([SearchresultplaylistItemModel(image:ImageConstant.imgImage74.obs,positions: "Ariana Grande - All \nSongs ".obs,image1:ImageConstant.imgImage75.obs,positions1: "Ariana Grande - Top \nGreatest Hits".obs),SearchresultplaylistItemModel(image:ImageConstant.imgImage76.obs,positions: "Ariana Grande - Most\nListened Songs".obs,image1:ImageConstant.imgImage77.obs,positions1: "Ariana Grande - \nComplete Albums".obs)]);

 }
