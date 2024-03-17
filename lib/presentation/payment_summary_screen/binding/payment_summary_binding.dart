import 'package:almohsen_s_application13/presentation/payment_summary_screen/controller/payment_summary_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentSummaryScreen.
///
/// This class ensures that the PaymentSummaryController is created when the
/// PaymentSummaryScreen is first loaded.
class PaymentSummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSummaryController());
  }
}
