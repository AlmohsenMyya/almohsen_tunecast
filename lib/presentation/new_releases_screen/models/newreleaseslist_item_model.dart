import '../../../core/app_export.dart';/// This class is used in the [newreleaseslist_item_widget] screen.
class NewreleaseslistItemModel {NewreleaseslistItemModel({this.positions, this.positions1, this.arianaGrande, this.id, }) { positions = positions  ?? Rx(ImageConstant.imgImage184x184);positions1 = positions1  ?? Rx("Positions");arianaGrande = arianaGrande  ?? Rx("Ariana Grande");id = id  ?? Rx(""); }

Rx<String>? positions;

Rx<String>? positions1;

Rx<String>? arianaGrande;

Rx<String>? id;

 }
