import '../../../core/app_export.dart';/// This class is used in the [playback_item_widget] screen.
class PlaybackItemModel {PlaybackItemModel({this.automix, this.allowsSeamless, this.isSelectedSwitch, this.id, }) { automix = automix  ?? Rx("Automix");allowsSeamless = allowsSeamless  ?? Rx("Allows seamless transitions between songs on select playlists.");isSelectedSwitch = isSelectedSwitch  ?? Rx(false);id = id  ?? Rx(""); }

Rx<String>? automix;

Rx<String>? allowsSeamless;

Rx<bool>? isSelectedSwitch;

Rx<String>? id;

 }
