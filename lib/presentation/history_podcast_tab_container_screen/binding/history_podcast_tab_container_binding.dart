import 'package:almohsen_s_application13/presentation/history_podcast_tab_container_screen/controller/history_podcast_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryPodcastTabContainerScreen.
///
/// This class ensures that the HistoryPodcastTabContainerController is created when the
/// HistoryPodcastTabContainerScreen is first loaded.
class HistoryPodcastTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryPodcastTabContainerController());
  }
}
