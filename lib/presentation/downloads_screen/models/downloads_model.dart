import '../../../core/app_export.dart';import 'downloads_item_model.dart';/// This class defines the variables used in the [downloads_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DownloadsModel {Rx<List<DownloadsItemModel>> downloadsItemList = Rx([DownloadsItemModel(image:ImageConstant.imgImage61.obs,songTitle: "Starboy Speed Up".obs,details: "Just Lowkey".obs),DownloadsItemModel(image:ImageConstant.imgImage63.obs,songTitle: "Blinding Lights".obs,details: "The Weeknd".obs)]);

 }
