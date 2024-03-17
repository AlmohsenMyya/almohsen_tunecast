import '../../../core/app_export.dart';import 'explore_item_model.dart';/// This class defines the variables used in the [explore_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreModel {Rx<List<ExploreItemModel>> exploreItemList = Rx([ExploreItemModel(categories: "Charts".obs,charts:ImageConstant.imgImage91x81.obs),ExploreItemModel(categories: "Podcasts".obs,charts:ImageConstant.imgImage37.obs),ExploreItemModel(categories: "New Releases".obs,charts:ImageConstant.imgImage38.obs),ExploreItemModel(categories: "Only You".obs,charts:ImageConstant.imgImage37.obs),ExploreItemModel(categories: "Pop".obs,charts:ImageConstant.imgImage39.obs),ExploreItemModel(categories: "K-Pop".obs,charts:ImageConstant.imgImage40.obs),ExploreItemModel(categories: "Rock".obs,charts:ImageConstant.imgImage46.obs),ExploreItemModel(categories: "Hip-Hop".obs,charts:ImageConstant.imgImage47.obs)]);

 }
