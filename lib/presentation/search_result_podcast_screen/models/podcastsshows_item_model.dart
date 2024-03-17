import '../../../core/app_export.dart';/// This class is used in the [podcastsshows_item_widget] screen.
class PodcastsshowsItemModel {PodcastsshowsItemModel({this.theJordanHarb, this.billSullivan, this.id, }) { theJordanHarb = theJordanHarb  ?? Rx(ImageConstant.imgImage31);billSullivan = billSullivan  ?? Rx("The Jordan Harb...");id = id  ?? Rx(""); }

Rx<String>? theJordanHarb;

Rx<String>? billSullivan;

Rx<String>? id;

 }
