import 'package:almohsen_s_application13/presentation/podcast_details_screen/controller/podcast_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PodcastDetailsScreen.
///
/// This class ensures that the PodcastDetailsController is created when the
/// PodcastDetailsScreen is first loaded.
class PodcastDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PodcastDetailsController());
  }
}
