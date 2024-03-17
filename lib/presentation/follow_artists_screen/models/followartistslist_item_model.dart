import '../../../core/app_export.dart';/// This class is used in the [followartistslist_item_widget] screen.
class FollowartistslistItemModel {FollowartistslistItemModel({this.theWeeknd, this.artistName, this.id, }) { theWeeknd = theWeeknd  ?? Rx(ImageConstant.imgEllipse1);artistName = artistName  ?? Rx("The Weeknd");id = id  ?? Rx(""); }

Rx<String>? theWeeknd;

Rx<String>? artistName;

Rx<String>? id;

 }
