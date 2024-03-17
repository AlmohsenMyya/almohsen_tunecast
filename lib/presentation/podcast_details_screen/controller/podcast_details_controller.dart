import '../../../core/app_export.dart';import '../models/podcast_details_model.dart';/// A controller class for the PodcastDetailsScreen.
///
/// This class manages the state of the PodcastDetailsScreen, including the
/// current podcastDetailsModelObj
class PodcastDetailsController extends GetxController {Rx<PodcastDetailsModel> podcastDetailsModelObj = PodcastDetailsModel().obs;

 }
