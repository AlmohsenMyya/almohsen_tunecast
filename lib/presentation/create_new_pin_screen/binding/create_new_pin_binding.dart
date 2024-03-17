import 'package:almohsen_s_application13/presentation/create_new_pin_screen/controller/create_new_pin_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateNewPinScreen.
///
/// This class ensures that the CreateNewPinController is created when the
/// CreateNewPinScreen is first loaded.
class CreateNewPinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewPinController());
  }
}
