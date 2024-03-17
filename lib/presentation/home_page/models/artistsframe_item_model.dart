import '../../../core/app_export.dart';/// This class is used in the [artistsframe_item_widget] screen.
class ArtistsframeItemModel {ArtistsframeItemModel({this.arianaGrande, this.artistsName, this.id, }) { arianaGrande = arianaGrande  ?? Rx(ImageConstant.imgImage2);artistsName = artistsName  ?? Rx("Ariana Grande");id = id  ?? Rx(""); }

Rx<String>? arianaGrande;

Rx<String>? artistsName;

Rx<String>? id;

 }
