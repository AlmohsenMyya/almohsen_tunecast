import 'package:almohsen_s_application13/presentation/songs_screen/controller/songs_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SongsScreen.
///
/// This class ensures that the SongsController is created when the
/// SongsScreen is first loaded.
class SongsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SongsController());
  }
}
