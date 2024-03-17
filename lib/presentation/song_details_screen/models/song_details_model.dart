import '../../../core/app_export.dart';import 'songdetails_item_model.dart';/// This class defines the variables used in the [song_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SongDetailsModel {Rx<List<SongdetailsItemModel>> songdetailsItemList = Rx([SongdetailsItemModel(image:ImageConstant.imgImage60.obs,songTitle: "Starboy".obs,details: "The Weeknd, Daft Punk".obs)]);

 }
