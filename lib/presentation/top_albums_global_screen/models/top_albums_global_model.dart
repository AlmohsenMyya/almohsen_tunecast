import '../../../core/app_export.dart';import 'topalbumsgloballist_item_model.dart';/// This class defines the variables used in the [top_albums_global_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopAlbumsGlobalModel {Rx<List<TopalbumsgloballistItemModel>> topalbumsgloballistItemList = Rx([TopalbumsgloballistItemModel(zero: "1".obs,image:ImageConstant.imgImage27.obs,songTitle: "HANDSOME".obs,details: "Warren Hue".obs,overflowMenu:ImageConstant.imgOverflowMenuOnprimarycontainer.obs,image1:ImageConstant.imgCategoriesMore.obs),TopalbumsgloballistItemModel(zero: "2".obs,image:ImageConstant.imgImage28.obs,songTitle: "Sharks".obs,details: "Imagine Dragons".obs,overflowMenu:ImageConstant.imgOverflowMenuOnprimarycontainer.obs,image1:ImageConstant.imgCategoriesMore.obs),TopalbumsgloballistItemModel(zero: "3".obs,image:ImageConstant.imgImage29.obs,songTitle: "Somebody’s Nobody".obs,details: "Alexander 23".obs,overflowMenu:ImageConstant.imgOverflowMenuOnprimarycontainer.obs,image1:ImageConstant.imgCategoriesMore.obs)]);

 }