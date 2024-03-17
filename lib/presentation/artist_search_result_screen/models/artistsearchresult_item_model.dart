import '../../../core/app_export.dart';/// This class is used in the [artistsearchresult_item_widget] screen.
class ArtistsearchresultItemModel {ArtistsearchresultItemModel({this.theWeeknd, this.artistName, this.id, }) { theWeeknd = theWeeknd  ?? Rx(ImageConstant.imgImage66);artistName = artistName  ?? Rx("The Weeknd");id = id  ?? Rx(""); }

Rx<String>? theWeeknd;

Rx<String>? artistName;

Rx<String>? id;

 }
