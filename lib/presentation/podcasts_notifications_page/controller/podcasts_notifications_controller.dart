import '../../../core/app_export.dart';
import '../models/podcasts_notifications_model.dart';

/// A controller class for the PodcastsNotificationsPage.
///
/// This class manages the state of the PodcastsNotificationsPage, including the
/// current podcastsNotificationsModelObj
class PodcastsNotificationsController extends GetxController {
  PodcastsNotificationsController(this.podcastsNotificationsModelObj);

  Rx<PodcastsNotificationsModel> podcastsNotificationsModelObj;
}
