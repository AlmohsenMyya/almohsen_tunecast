import '../../../core/app_export.dart';import 'profiledetails_item_model.dart';/// This class defines the variables used in the [profile_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileDetailsModel {Rx<List<ProfiledetailsItemModel>> profiledetailsItemList = Rx([ProfiledetailsItemModel(image:ImageConstant.imgImage74.obs,positions: "Ariana Grande - All \nSongs ".obs),ProfiledetailsItemModel(image:ImageConstant.imgImage75.obs,positions: "Ariana Grande - Top \nGreatest Hits".obs)]);

 }
