import 'package:almohsen_s_application13/presentation/lets_you_in_screen/controller/lets_you_in_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LetsYouInScreen.
///
/// This class ensures that the LetsYouInController is created when the
/// LetsYouInScreen is first loaded.
class LetsYouInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LetsYouInController());
  }
}
