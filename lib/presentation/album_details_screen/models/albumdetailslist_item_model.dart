import '../../../core/app_export.dart';/// This class is used in the [albumdetailslist_item_widget] screen.
class AlbumdetailslistItemModel {AlbumdetailslistItemModel({this.image, this.songTitle, this.details, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage60);songTitle = songTitle  ?? Rx("Starboy");details = details  ?? Rx("The Weeknd, Daft Punk");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? songTitle;

Rx<String>? details;

Rx<String>? id;

 }
