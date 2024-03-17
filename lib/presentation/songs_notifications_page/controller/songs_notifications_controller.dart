import '../../../core/app_export.dart';
import '../models/songs_notifications_model.dart';

/// A controller class for the SongsNotificationsPage.
///
/// This class manages the state of the SongsNotificationsPage, including the
/// current songsNotificationsModelObj
class SongsNotificationsController extends GetxController {
  SongsNotificationsController(this.songsNotificationsModelObj);

  Rx<SongsNotificationsModel> songsNotificationsModelObj;
}
