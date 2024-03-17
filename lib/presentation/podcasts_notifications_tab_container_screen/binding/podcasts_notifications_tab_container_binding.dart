import 'package:almohsen_s_application13/presentation/podcasts_notifications_tab_container_screen/controller/podcasts_notifications_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PodcastsNotificationsTabContainerScreen.
///
/// This class ensures that the PodcastsNotificationsTabContainerController is created when the
/// PodcastsNotificationsTabContainerScreen is first loaded.
class PodcastsNotificationsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PodcastsNotificationsTabContainerController());
  }
}
