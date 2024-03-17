import 'package:almohsen_s_application13/presentation/search_results_songs_tab_container_screen/controller/search_results_songs_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchResultsSongsTabContainerScreen.
///
/// This class ensures that the SearchResultsSongsTabContainerController is created when the
/// SearchResultsSongsTabContainerScreen is first loaded.
class SearchResultsSongsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultsSongsTabContainerController());
  }
}
