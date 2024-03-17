import 'package:almohsen_s_application13/presentation/top_albums_global_screen/controller/top_albums_global_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TopAlbumsGlobalScreen.
///
/// This class ensures that the TopAlbumsGlobalController is created when the
/// TopAlbumsGlobalScreen is first loaded.
class TopAlbumsGlobalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopAlbumsGlobalController());
  }
}
