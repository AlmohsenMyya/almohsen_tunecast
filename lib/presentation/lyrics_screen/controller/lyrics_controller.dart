import '../../../core/app_export.dart';import '../models/lyrics_model.dart';/// A controller class for the LyricsScreen.
///
/// This class manages the state of the LyricsScreen, including the
/// current lyricsModelObj
class LyricsController extends GetxController {Rx<LyricsModel> lyricsModelObj = LyricsModel().obs;

 }
