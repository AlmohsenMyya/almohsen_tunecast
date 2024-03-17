import '../../../core/app_export.dart';import 'followartistslist_item_model.dart';/// This class defines the variables used in the [follow_artists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FollowArtistsModel {Rx<List<FollowartistslistItemModel>> followartistslistItemList = Rx([FollowartistslistItemModel(theWeeknd:ImageConstant.imgEllipse1.obs,artistName: "The Weeknd".obs),FollowartistslistItemModel(theWeeknd:ImageConstant.imgEllipse4.obs,artistName: "Ryan Jones".obs)]);

 }
