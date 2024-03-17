import 'package:almohsen_s_application13/presentation/playlist_details_one_screen/controller/playlist_details_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PlaylistDetailsOneScreen.
///
/// This class ensures that the PlaylistDetailsOneController is created when the
/// PlaylistDetailsOneScreen is first loaded.
class PlaylistDetailsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlaylistDetailsOneController());
  }
}
