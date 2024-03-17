import '../../../core/app_export.dart';
import '../models/podcasters_model.dart';

/// A controller class for the PodcastersPage.
///
/// This class manages the state of the PodcastersPage, including the
/// current podcastersModelObj
class PodcastersController extends GetxController {
  PodcastersController(this.podcastersModelObj);

  Rx<PodcastersModel> podcastersModelObj;
}
