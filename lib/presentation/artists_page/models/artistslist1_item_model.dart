import '../../../core/app_export.dart';/// This class is used in the [artistslist1_item_widget] screen.
class Artistslist1ItemModel {Artistslist1ItemModel({this.theWeeknd, this.artistName, this.songsCounter, this.id, }) { theWeeknd = theWeeknd  ?? Rx(ImageConstant.imgImage66);artistName = artistName  ?? Rx("The Weeknd");songsCounter = songsCounter  ?? Rx("20 Songs");id = id  ?? Rx(""); }

Rx<String>? theWeeknd;

Rx<String>? artistName;

Rx<String>? songsCounter;

Rx<String>? id;

 }
