import '../../../core/app_export.dart';
import '../models/history_podcast_model.dart';

/// A controller class for the HistoryPodcastPage.
///
/// This class manages the state of the HistoryPodcastPage, including the
/// current historyPodcastModelObj
class HistoryPodcastController extends GetxController {
  HistoryPodcastController(this.historyPodcastModelObj);

  Rx<HistoryPodcastModel> historyPodcastModelObj;
}
