import '../../../core/app_export.dart';import '../models/search_result_playlist_model.dart';/// A controller class for the SearchResultPlaylistPage.
///
/// This class manages the state of the SearchResultPlaylistPage, including the
/// current searchResultPlaylistModelObj
class SearchResultPlaylistController extends GetxController {SearchResultPlaylistController(this.searchResultPlaylistModelObj);

Rx<SearchResultPlaylistModel> searchResultPlaylistModelObj;

@override void onReady() { Get.toNamed(AppRoutes.playlistDetailsOneScreen, ); } 
 }
