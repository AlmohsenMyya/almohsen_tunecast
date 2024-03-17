import '../../../core/app_export.dart';import '../models/audio_video_model.dart';/// A controller class for the AudioVideoScreen.
///
/// This class manages the state of the AudioVideoScreen, including the
/// current audioVideoModelObj
class AudioVideoController extends GetxController {Rx<AudioVideoModel> audioVideoModelObj = AudioVideoModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

 }
