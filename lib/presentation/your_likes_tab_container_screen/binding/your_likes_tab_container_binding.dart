import 'package:almohsen_s_application13/presentation/your_likes_tab_container_screen/controller/your_likes_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the YourLikesTabContainerScreen.
///
/// This class ensures that the YourLikesTabContainerController is created when the
/// YourLikesTabContainerScreen is first loaded.
class YourLikesTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YourLikesTabContainerController());
  }
}
