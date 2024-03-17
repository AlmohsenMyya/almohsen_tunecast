import 'package:almohsen_s_application13/presentation/podcasts_screen/controller/podcasts_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PodcastsScreen.
///
/// This class ensures that the PodcastsController is created when the
/// PodcastsScreen is first loaded.
class PodcastsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PodcastsController());
  }
}
