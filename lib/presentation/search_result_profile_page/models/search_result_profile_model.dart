import '../../../core/app_export.dart';import 'fiftysixsection_item_model.dart';import 'followingsection_item_model.dart';/// This class defines the variables used in the [search_result_profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultProfileModel {Rx<List<FiftysixsectionItemModel>> fiftysixsectionItemList = Rx([FiftysixsectionItemModel(jennyWilson:ImageConstant.imgImage78.obs,artistName: "Jenny Wilson".obs,followersCounter: "9,489 Followers".obs),FiftysixsectionItemModel(jennyWilson:ImageConstant.imgImage79.obs,artistName: "Jenny Foose".obs,followersCounter: "8,811 Followers".obs),FiftysixsectionItemModel(jennyWilson:ImageConstant.imgImage80.obs,artistName: "Jenny Hanlin".obs,followersCounter: "3,933 Followers".obs)]);

Rx<List<FollowingsectionItemModel>> followingsectionItemList = Rx(List.generate(1,(index) => FollowingsectionItemModel()));

 }
