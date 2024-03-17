import '../../../core/app_export.dart';/// This class is used in the [topchartslist_item_widget] screen.
class TopchartslistItemModel {TopchartslistItemModel({this.top, this.price, this.tOP1, this.price1, this.tOP2, this.price2, this.price3, this.id, }) { top = top  ?? Rx(ImageConstant.imgImage5);price = price  ?? Rx("TOP 100");tOP1 = tOP1  ?? Rx(ImageConstant.imgImage6);price1 = price1  ?? Rx("TOP 50");tOP2 = tOP2  ?? Rx(ImageConstant.imgImage7);price2 = price2  ?? Rx("TOP 100");price3 = price3  ?? Rx("TOP 100 - Global");id = id  ?? Rx(""); }

Rx<String>? top;

Rx<String>? price;

Rx<String>? tOP1;

Rx<String>? price1;

Rx<String>? tOP2;

Rx<String>? price2;

Rx<String>? price3;

Rx<String>? id;

 }
