import '../../../core/app_export.dart';/// This class is used in the [popularartists_item_widget] screen.
class PopularartistsItemModel {PopularartistsItemModel({this.arianaGrande, this.artistsName, this.id, }) { arianaGrande = arianaGrande  ?? Rx(ImageConstant.imgImage21);artistsName = artistsName  ?? Rx("Ariana Grande");id = id  ?? Rx(""); }

Rx<String>? arianaGrande;

Rx<String>? artistsName;

Rx<String>? id;

 }
