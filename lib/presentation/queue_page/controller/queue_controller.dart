import '../../../core/app_export.dart';
import '../models/queue_model.dart';

/// A controller class for the QueuePage.
///
/// This class manages the state of the QueuePage, including the
/// current queueModelObj
class QueueController extends GetxController {
  QueueController(this.queueModelObj);

  Rx<QueueModel> queueModelObj;
}
