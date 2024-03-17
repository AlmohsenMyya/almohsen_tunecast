import '../../../core/app_export.dart';import 'songsnotifications_item_model.dart';/// This class defines the variables used in the [songs_notifications_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SongsNotificationsModel {Rx<List<SongsnotificationsItemModel>> songsnotificationsItemList = Rx([SongsnotificationsItemModel(today:ImageConstant.imgImage80x80.obs,today1: "Today".obs,text: "|".obs,time: "04:36 mins".obs,breakmysoul: "BREAK MY SOUL".obs,beyonce: "Beyonce".obs,text1: "|".obs,album: "Album".obs,today2:ImageConstant.imgVectorGray90001.obs)]);

 }
