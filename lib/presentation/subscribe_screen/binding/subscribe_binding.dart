import 'package:almohsen_s_application13/presentation/subscribe_screen/controller/subscribe_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SubscribeScreen.
///
/// This class ensures that the SubscribeController is created when the
/// SubscribeScreen is first loaded.
class SubscribeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscribeController());
  }
}
