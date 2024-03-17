import 'package:almohsen_s_application13/presentation/filled_otp_screen/controller/filled_otp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FilledOtpScreen.
///
/// This class ensures that the FilledOtpController is created when the
/// FilledOtpScreen is first loaded.
class FilledOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilledOtpController());
  }
}
