import '../../../core/app_export.dart';/// This class is used in the [downloads_item_widget] screen.
class DownloadsItemModel {DownloadsItemModel({this.image, this.songTitle, this.details, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage61);songTitle = songTitle  ?? Rx("Starboy Speed Up");details = details  ?? Rx("Just Lowkey");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? songTitle;

Rx<String>? details;

Rx<String>? id;

 }
