import '../../../core/app_export.dart';/// This class is used in the [songlist_item_widget] screen.
class SonglistItemModel {SonglistItemModel({this.handsome, this.songTitle, this.details, this.overflowMenu, this.hANDSOME1, this.id, }) { handsome = handsome  ?? Rx(ImageConstant.imgImage27);songTitle = songTitle  ?? Rx("HANDSOME");details = details  ?? Rx("Warren Hue");overflowMenu = overflowMenu  ?? Rx(ImageConstant.imgOverflowMenuOnprimarycontainer);hANDSOME1 = hANDSOME1  ?? Rx(ImageConstant.imgCategoriesMore);id = id  ?? Rx(""); }

Rx<String>? handsome;

Rx<String>? songTitle;

Rx<String>? details;

Rx<String>? overflowMenu;

Rx<String>? hANDSOME1;

Rx<String>? id;

 }
