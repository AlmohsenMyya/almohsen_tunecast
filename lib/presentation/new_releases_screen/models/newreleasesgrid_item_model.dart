import '../../../core/app_export.dart';/// This class is used in the [newreleasesgrid_item_widget] screen.
class NewreleasesgridItemModel {NewreleasesgridItemModel({this.pain, this.positions, this.arianaGrande, this.id, }) { pain = pain  ?? Rx(ImageConstant.imgImage42);positions = positions  ?? Rx("Pain");arianaGrande = arianaGrande  ?? Rx("Ryan Jones");id = id  ?? Rx(""); }

Rx<String>? pain;

Rx<String>? positions;

Rx<String>? arianaGrande;

Rx<String>? id;

 }
