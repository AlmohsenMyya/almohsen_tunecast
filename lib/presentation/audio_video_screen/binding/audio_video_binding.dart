import 'package:almohsen_s_application13/presentation/audio_video_screen/controller/audio_video_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AudioVideoScreen.
///
/// This class ensures that the AudioVideoController is created when the
/// AudioVideoScreen is first loaded.
class AudioVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AudioVideoController());
  }
}
