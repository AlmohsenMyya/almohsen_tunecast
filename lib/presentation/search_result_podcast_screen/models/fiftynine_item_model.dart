import '../../../core/app_export.dart';/// This class is used in the [fiftynine_item_widget] screen.
class FiftynineItemModel {FiftynineItemModel({this.image, this.podcastTitle, this.author, this.text, this.time, this.image1, this.appleTalk, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage80x80);podcastTitle = podcastTitle  ?? Rx("837: Tristan Harris | Reclaiming Our Future with ...");author = author  ?? Rx("Apple Talk");text = text  ?? Rx("|");time = time  ?? Rx("48:26 mins");image1 = image1  ?? Rx(ImageConstant.imgFavorite);appleTalk = appleTalk  ?? Rx(ImageConstant.imgIconlyLightOutlineArrowGray9000120x20);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? podcastTitle;

Rx<String>? author;

Rx<String>? text;

Rx<String>? time;

Rx<String>? image1;

Rx<String>? appleTalk;

Rx<String>? id;

 }
