import '../../../core/app_export.dart';import '../models/podcasts_model.dart';/// A controller class for the PodcastsScreen.
///
/// This class manages the state of the PodcastsScreen, including the
/// current podcastsModelObj
class PodcastsController extends GetxController {Rx<PodcastsModel> podcastsModelObj = PodcastsModel().obs;

 }
