import '../../../core/app_export.dart';/// This class is used in the [popularpodcastslist_item_widget] screen.
class PopularpodcastslistItemModel {PopularpodcastslistItemModel({this.image, this.billSullivan, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage31);billSullivan = billSullivan  ?? Rx("610: Bill Sullivan | Pleased to Meet ...");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? billSullivan;

Rx<String>? id;

 }
