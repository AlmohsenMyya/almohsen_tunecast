import '../../../core/app_export.dart';import '../models/walkthrough_model.dart';/// A controller class for the WalkthroughScreen.
///
/// This class manages the state of the WalkthroughScreen, including the
/// current walkthroughModelObj
class WalkthroughController extends GetxController {Rx<WalkthroughModel> walkthroughModelObj = WalkthroughModel().obs;

 }
