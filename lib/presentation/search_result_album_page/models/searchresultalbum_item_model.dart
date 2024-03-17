import '../../../core/app_export.dart';/// This class is used in the [searchresultalbum_item_widget] screen.
class SearchresultalbumItemModel {SearchresultalbumItemModel({this.sweetener, this.positions, this.arianaGrande, this.zipcode, this.id, }) { sweetener = sweetener  ?? Rx(ImageConstant.imgImage70);positions = positions  ?? Rx("Sweetener");arianaGrande = arianaGrande  ?? Rx("Ariana Grande");zipcode = zipcode  ?? Rx("2018");id = id  ?? Rx(""); }

Rx<String>? sweetener;

Rx<String>? positions;

Rx<String>? arianaGrande;

Rx<String>? zipcode;

Rx<String>? id;

 }
