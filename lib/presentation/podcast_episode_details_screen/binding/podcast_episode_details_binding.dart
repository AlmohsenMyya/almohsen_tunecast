import 'package:almohsen_s_application13/presentation/podcast_episode_details_screen/controller/podcast_episode_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PodcastEpisodeDetailsScreen.
///
/// This class ensures that the PodcastEpisodeDetailsController is created when the
/// PodcastEpisodeDetailsScreen is first loaded.
class PodcastEpisodeDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PodcastEpisodeDetailsController());
  }
}
