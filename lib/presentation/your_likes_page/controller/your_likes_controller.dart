import '../../../core/app_export.dart';
import '../models/your_likes_model.dart';

/// A controller class for the YourLikesPage.
///
/// This class manages the state of the YourLikesPage, including the
/// current yourLikesModelObj
class YourLikesController extends GetxController {
  YourLikesController(this.yourLikesModelObj);

  Rx<YourLikesModel> yourLikesModelObj;
}
