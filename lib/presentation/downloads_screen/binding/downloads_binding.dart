import 'package:almohsen_s_application13/presentation/downloads_screen/controller/downloads_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DownloadsScreen.
///
/// This class ensures that the DownloadsController is created when the
/// DownloadsScreen is first loaded.
class DownloadsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DownloadsController());
  }
}
