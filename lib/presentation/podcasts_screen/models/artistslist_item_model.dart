import '../../../core/app_export.dart';/// This class is used in the [artistslist_item_widget] screen.
class ArtistslistItemModel {ArtistslistItemModel({this.drDeath, this.artistsName, this.id, }) { drDeath = drDeath  ?? Rx(ImageConstant.imgImage34);artistsName = artistsName  ?? Rx("Dr. Death");id = id  ?? Rx(""); }

Rx<String>? drDeath;

Rx<String>? artistsName;

Rx<String>? id;

 }
