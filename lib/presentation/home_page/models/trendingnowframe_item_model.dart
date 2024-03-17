import '../../../core/app_export.dart';/// This class is used in the [trendingnowframe_item_widget] screen.
class TrendingnowframeItemModel {TrendingnowframeItemModel({this.image, this.loremIpsumDolor, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage);loremIpsumDolor = loremIpsumDolor  ?? Rx("Shades of Love - Ania Szarmach");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? loremIpsumDolor;

Rx<String>? id;

 }
