import 'package:almohsen_s_application13/presentation/playlists_screen/controller/playlists_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PlaylistsScreen.
///
/// This class ensures that the PlaylistsController is created when the
/// PlaylistsScreen is first loaded.
class PlaylistsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlaylistsController());
  }
}
