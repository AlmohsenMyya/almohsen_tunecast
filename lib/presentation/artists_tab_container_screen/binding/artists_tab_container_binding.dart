import 'package:almohsen_s_application13/presentation/artists_tab_container_screen/controller/artists_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ArtistsTabContainerScreen.
///
/// This class ensures that the ArtistsTabContainerController is created when the
/// ArtistsTabContainerScreen is first loaded.
class ArtistsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArtistsTabContainerController());
  }
}
