import '../../../core/app_export.dart';import '../models/playback_model.dart';/// A controller class for the PlaybackScreen.
///
/// This class manages the state of the PlaybackScreen, including the
/// current playbackModelObj
class PlaybackController extends GetxController {Rx<PlaybackModel> playbackModelObj = PlaybackModel().obs;

 }
