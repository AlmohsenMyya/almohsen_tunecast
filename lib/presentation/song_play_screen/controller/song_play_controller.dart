import '../../../core/app_export.dart';import '../models/song_play_model.dart';/// A controller class for the SongPlayScreen.
///
/// This class manages the state of the SongPlayScreen, including the
/// current songPlayModelObj
class SongPlayController extends GetxController {Rx<SongPlayModel> songPlayModelObj = SongPlayModel().obs;

 }
