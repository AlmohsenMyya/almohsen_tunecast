import '../../../core/app_export.dart';import 'songplayoverscreen_item_model.dart';/// This class defines the variables used in the [song_play_over_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SongPlayOverScreenModel {Rx<List<SongplayoverscreenItemModel>> songplayoverscreenItemList = Rx([SongplayoverscreenItemModel(image:ImageConstant.imgImage60.obs,songTitle: "Starboy".obs,details: "The Weeknd, Daft Punk".obs,image1:ImageConstant.imgIconlyBoldPlayOnprimarycontainer.obs,image2:ImageConstant.imgCategoriesMore.obs)]);

 }
