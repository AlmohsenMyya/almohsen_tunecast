import 'package:almohsen_s_application13/presentation/profile_details_one_screen/controller/profile_details_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileDetailsOneScreen.
///
/// This class ensures that the ProfileDetailsOneController is created when the
/// ProfileDetailsOneScreen is first loaded.
class ProfileDetailsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileDetailsOneController());
  }
}
