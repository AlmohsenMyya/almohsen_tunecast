import '../../../core/app_export.dart';
import '../models/logout_model.dart';

/// A controller class for the LogoutBottomsheet.
///
/// This class manages the state of the LogoutBottomsheet, including the
/// current logoutModelObj
class LogoutController extends GetxController {
  Rx<LogoutModel> logoutModelObj = LogoutModel().obs;
}
