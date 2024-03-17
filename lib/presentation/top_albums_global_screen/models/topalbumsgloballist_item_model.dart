import '../../../core/app_export.dart';/// This class is used in the [topalbumsgloballist_item_widget] screen.
class TopalbumsgloballistItemModel {TopalbumsgloballistItemModel({this.zero, this.image, this.songTitle, this.details, this.overflowMenu, this.image1, this.id, }) { zero = zero  ?? Rx("1");image = image  ?? Rx(ImageConstant.imgImage27);songTitle = songTitle  ?? Rx("HANDSOME");details = details  ?? Rx("Warren Hue");overflowMenu = overflowMenu  ?? Rx(ImageConstant.imgOverflowMenuOnprimarycontainer);image1 = image1  ?? Rx(ImageConstant.imgCategoriesMore);id = id  ?? Rx(""); }

Rx<String>? zero;

Rx<String>? image;

Rx<String>? songTitle;

Rx<String>? details;

Rx<String>? overflowMenu;

Rx<String>? image1;

Rx<String>? id;

 }
