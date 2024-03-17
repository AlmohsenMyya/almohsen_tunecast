import '../../../core/app_export.dart';/// This class is used in the [podcastsnotifications_item_widget] screen.
class PodcastsnotificationsItemModel {PodcastsnotificationsItemModel({this.image, this.tristanHarris, this.appleTalk, this.text, this.time, this.image1, this.image2, this.appleTalk1, this.appleTalk2, this.iconlyBoldPlay, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage80x80);tristanHarris = tristanHarris  ?? Rx("837: Tristan Harris | Reclaiming Our Future with ...");appleTalk = appleTalk  ?? Rx("Apple Talk");text = text  ?? Rx("|");time = time  ?? Rx("48:26 mins");image1 = image1  ?? Rx(ImageConstant.imgFavorite);image2 = image2  ?? Rx(ImageConstant.imgCategoriesPlaylist);appleTalk1 = appleTalk1  ?? Rx(ImageConstant.imgIconlyLightOutlineArrowGray90001);appleTalk2 = appleTalk2  ?? Rx(ImageConstant.imgCategoriesMore);iconlyBoldPlay = iconlyBoldPlay  ?? Rx(ImageConstant.imgIconlyBoldPlay);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? tristanHarris;

Rx<String>? appleTalk;

Rx<String>? text;

Rx<String>? time;

Rx<String>? image1;

Rx<String>? image2;

Rx<String>? appleTalk1;

Rx<String>? appleTalk2;

Rx<String>? iconlyBoldPlay;

Rx<String>? id;

 }
