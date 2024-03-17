import '../../../core/app_export.dart';import 'playlistdetails_item_model.dart';/// This class defines the variables used in the [playlist_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistDetailsModel {Rx<List<PlaylistdetailsItemModel>> playlistdetailsItemList = Rx([PlaylistdetailsItemModel(image:ImageConstant.imgImage61.obs,songTitle: "Starboy Speed Up".obs,details: "Just Lowkey".obs),PlaylistdetailsItemModel(image:ImageConstant.imgImage64.obs,songTitle: "The Hills".obs,details: "The Weeknd".obs),PlaylistdetailsItemModel(image:ImageConstant.imgImage65.obs,songTitle: "I Feel It Coming".obs,details: "The Weeknd, Daft Punk".obs)]);

 }
