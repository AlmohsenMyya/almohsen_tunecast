import '../../../core/app_export.dart';import 'songs_item_model.dart';/// This class defines the variables used in the [songs_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SongsModel {Rx<List<SongsItemModel>> songsItemList = Rx([SongsItemModel(image:ImageConstant.imgImage61.obs,songTitle: "Starboy Speed Up".obs,details: "Just Lowkey".obs),SongsItemModel(image:ImageConstant.imgImage63.obs,songTitle: "Blinding Lights".obs,details: "The Weeknd".obs)]);

 }
