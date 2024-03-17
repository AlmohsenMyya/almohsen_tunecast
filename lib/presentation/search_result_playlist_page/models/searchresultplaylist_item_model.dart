import '../../../core/app_export.dart';/// This class is used in the [searchresultplaylist_item_widget] screen.
class SearchresultplaylistItemModel {SearchresultplaylistItemModel({this.image, this.positions, this.image1, this.positions1, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage74);positions = positions  ?? Rx("Ariana Grande - All \nSongs ");image1 = image1  ?? Rx(ImageConstant.imgImage75);positions1 = positions1  ?? Rx("Ariana Grande - Top \nGreatest Hits");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? positions;

Rx<String>? image1;

Rx<String>? positions1;

Rx<String>? id;

 }
