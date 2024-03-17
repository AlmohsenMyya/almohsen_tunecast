import 'package:almohsen_s_application13/presentation/charts_screen/controller/charts_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChartsScreen.
///
/// This class ensures that the ChartsController is created when the
/// ChartsScreen is first loaded.
class ChartsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChartsController());
  }
}
