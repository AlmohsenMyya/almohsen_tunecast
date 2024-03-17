import '../../../core/app_export.dart';import '../models/set_fingerprint_model.dart';/// A controller class for the SetFingerprintScreen.
///
/// This class manages the state of the SetFingerprintScreen, including the
/// current setFingerprintModelObj
class SetFingerprintController extends GetxController {Rx<SetFingerprintModel> setFingerprintModelObj = SetFingerprintModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.followArtistsScreen, );Get.toNamed(AppRoutes.homeContainerScreen, ); } 
 }
