import 'package:almohsen_s_application13/presentation/search_not_found_screen/controller/search_not_found_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchNotFoundScreen.
///
/// This class ensures that the SearchNotFoundController is created when the
/// SearchNotFoundScreen is first loaded.
class SearchNotFoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchNotFoundController());
  }
}
