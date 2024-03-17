import '../../../core/app_export.dart';/// This class is used in the [songplayoverscreen_item_widget] screen.
class SongplayoverscreenItemModel {SongplayoverscreenItemModel({this.image, this.songTitle, this.details, this.image1, this.image2, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage60);songTitle = songTitle  ?? Rx("Starboy");details = details  ?? Rx("The Weeknd, Daft Punk");image1 = image1  ?? Rx(ImageConstant.imgIconlyBoldPlayOnprimarycontainer);image2 = image2  ?? Rx(ImageConstant.imgCategoriesMore);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? songTitle;

Rx<String>? details;

Rx<String>? image1;

Rx<String>? image2;

Rx<String>? id;

 }
