import '../../../core/app_export.dart';/// This class is used in the [profiledetails_item_widget] screen.
class ProfiledetailsItemModel {ProfiledetailsItemModel({this.image, this.positions, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage74);positions = positions  ?? Rx("Ariana Grande - All \nSongs ");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? positions;

Rx<String>? id;

 }
