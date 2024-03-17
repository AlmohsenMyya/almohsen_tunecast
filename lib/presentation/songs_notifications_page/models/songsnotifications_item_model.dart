import '../../../core/app_export.dart';/// This class is used in the [songsnotifications_item_widget] screen.
class SongsnotificationsItemModel {SongsnotificationsItemModel({this.today, this.today1, this.text, this.time, this.breakmysoul, this.beyonce, this.text1, this.album, this.today2, this.id, }) { today = today  ?? Rx(ImageConstant.imgImage80x80);today1 = today1  ?? Rx("Today");text = text  ?? Rx("|");time = time  ?? Rx("04:36 mins");breakmysoul = breakmysoul  ?? Rx("BREAK MY SOUL");beyonce = beyonce  ?? Rx("Beyonce");text1 = text1  ?? Rx("|");album = album  ?? Rx("Album");today2 = today2  ?? Rx(ImageConstant.imgVectorGray90001);id = id  ?? Rx(""); }

Rx<String>? today;

Rx<String>? today1;

Rx<String>? text;

Rx<String>? time;

Rx<String>? breakmysoul;

Rx<String>? beyonce;

Rx<String>? text1;

Rx<String>? album;

Rx<String>? today2;

Rx<String>? id;

 }
