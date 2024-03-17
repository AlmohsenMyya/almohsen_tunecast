import '../../../core/app_export.dart';/// This class is used in the [yourlikes_item_widget] screen.
class YourlikesItemModel {YourlikesItemModel({this.image, this.podcastTitle, this.author, this.text, this.time, this.image1, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage80x80);podcastTitle = podcastTitle  ?? Rx("837: Tristan Harris | Reclaiming Our Future with ...");author = author  ?? Rx("Apple Talk");text = text  ?? Rx("|");time = time  ?? Rx("48:26 mins");image1 = image1  ?? Rx(ImageConstant.imgFavorite);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? podcastTitle;

Rx<String>? author;

Rx<String>? text;

Rx<String>? time;

Rx<String>? image1;

Rx<String>? id;

 }
