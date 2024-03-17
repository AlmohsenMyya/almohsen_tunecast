import 'package:almohsen_s_application13/presentation/trending_now_screen/controller/trending_now_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrendingNowScreen.
///
/// This class ensures that the TrendingNowController is created when the
/// TrendingNowScreen is first loaded.
class TrendingNowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingNowController());
  }
}
