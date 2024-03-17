import '../../../core/app_export.dart';/// This class is used in the [podcasterslist_item_widget] screen.
class PodcasterslistItemModel {PodcasterslistItemModel({this.image, this.artistName, this.episodesCounter, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage80x80);artistName = artistName  ?? Rx("The Jordan Harbinger Show");episodesCounter = episodesCounter  ?? Rx("692 Episodes");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? artistName;

Rx<String>? episodesCounter;

Rx<String>? id;

 }
