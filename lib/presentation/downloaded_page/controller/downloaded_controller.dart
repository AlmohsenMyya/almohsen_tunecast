import '../../../core/app_export.dart';
import '../models/downloaded_model.dart';

/// A controller class for the DownloadedPage.
///
/// This class manages the state of the DownloadedPage, including the
/// current downloadedModelObj
class DownloadedController extends GetxController {
  DownloadedController(this.downloadedModelObj);

  Rx<DownloadedModel> downloadedModelObj;
}
