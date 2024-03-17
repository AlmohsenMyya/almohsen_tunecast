import '../../../core/app_export.dart';import '../models/lets_you_in_model.dart';/// A controller class for the LetsYouInScreen.
///
/// This class manages the state of the LetsYouInScreen, including the
/// current letsYouInModelObj
class LetsYouInController extends GetxController {Rx<LetsYouInModel> letsYouInModelObj = LetsYouInModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.signInScreen, );Get.toNamed(AppRoutes.signUpScreen, ); } 
 }
