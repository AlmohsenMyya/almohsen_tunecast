import 'package:almohsen_s_application13/presentation/search_result_podcast_screen/controller/search_result_podcast_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchResultPodcastScreen.
///
/// This class ensures that the SearchResultPodcastController is created when the
/// SearchResultPodcastScreen is first loaded.
class SearchResultPodcastBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultPodcastController());
  }
}
