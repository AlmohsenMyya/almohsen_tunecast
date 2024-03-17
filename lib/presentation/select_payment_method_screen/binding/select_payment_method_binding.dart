import 'package:almohsen_s_application13/presentation/select_payment_method_screen/controller/select_payment_method_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectPaymentMethodScreen.
///
/// This class ensures that the SelectPaymentMethodController is created when the
/// SelectPaymentMethodScreen is first loaded.
class SelectPaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectPaymentMethodController());
  }
}
