import '../../../core/app_export.dart';/// This class is used in the [historymusic_item_widget] screen.
class HistorymusicItemModel {HistorymusicItemModel({this.image, this.songTitle, this.details, this.image1, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage61);songTitle = songTitle  ?? Rx("Starboy Speed Up");details = details  ?? Rx("Just Lowkey");image1 = image1  ?? Rx(ImageConstant.imgCategoriesMore);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? songTitle;

Rx<String>? details;

Rx<String>? image1;

Rx<String>? id;

 }
