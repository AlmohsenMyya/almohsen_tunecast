import 'package:almohsen_s_application13/presentation/playlist_details_screen/controller/playlist_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PlaylistDetailsScreen.
///
/// This class ensures that the PlaylistDetailsController is created when the
/// PlaylistDetailsScreen is first loaded.
class PlaylistDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlaylistDetailsController());
  }
}
