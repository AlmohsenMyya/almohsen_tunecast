import 'package:almohsen_s_application13/presentation/song_play_screen/controller/song_play_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SongPlayScreen.
///
/// This class ensures that the SongPlayController is created when the
/// SongPlayScreen is first loaded.
class SongPlayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SongPlayController());
  }
}
