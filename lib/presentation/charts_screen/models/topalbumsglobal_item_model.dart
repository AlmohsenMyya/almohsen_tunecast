import '../../../core/app_export.dart';/// This class is used in the [topalbumsglobal_item_widget] screen.
class TopalbumsglobalItemModel {TopalbumsglobalItemModel({this.price, this.loremIpsumDolor, this.id, }) { price = price  ?? Rx("TOP\nALBUMS\nGLOBAL");loremIpsumDolor = loremIpsumDolor  ?? Rx("Top Albums Global");id = id  ?? Rx(""); }

Rx<String>? price;

Rx<String>? loremIpsumDolor;

Rx<String>? id;

 }
