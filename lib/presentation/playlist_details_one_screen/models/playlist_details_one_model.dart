import '../../../core/app_export.dart';import 'playlistdetailslist_item_model.dart';/// This class defines the variables used in the [playlist_details_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistDetailsOneModel {Rx<List<PlaylistdetailslistItemModel>> playlistdetailslistItemList = Rx([PlaylistdetailslistItemModel(image:ImageConstant.imgImage60.obs,songTitle: "Starboy".obs,details: "The Weeknd, Daft Punk".obs)]);

 }
