import 'package:almohsen_s_application13/presentation/playback_screen/controller/playback_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PlaybackScreen.
///
/// This class ensures that the PlaybackController is created when the
/// PlaybackScreen is first loaded.
class PlaybackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlaybackController());
  }
}
