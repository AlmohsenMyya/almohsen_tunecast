import 'package:almohsen_s_application13/presentation/search_result_profile_tab_container_screen/controller/search_result_profile_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchResultProfileTabContainerScreen.
///
/// This class ensures that the SearchResultProfileTabContainerController is created when the
/// SearchResultProfileTabContainerScreen is first loaded.
class SearchResultProfileTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultProfileTabContainerController());
  }
}
