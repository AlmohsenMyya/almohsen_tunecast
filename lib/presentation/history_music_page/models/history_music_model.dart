import '../../../core/app_export.dart';import 'historymusic_item_model.dart';/// This class defines the variables used in the [history_music_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryMusicModel {Rx<List<HistorymusicItemModel>> historymusicItemList = Rx([HistorymusicItemModel(image:ImageConstant.imgImage61.obs,songTitle: "Starboy Speed Up".obs,details: "Just Lowkey".obs,image1:ImageConstant.imgCategoriesMore.obs),HistorymusicItemModel(image:ImageConstant.imgImage62.obs,songTitle: "Die For You".obs,details: "The Weeknd".obs,image1:ImageConstant.imgCategoriesMore.obs)]);

 }
