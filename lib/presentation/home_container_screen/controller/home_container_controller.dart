import '../../../core/app_export.dart';import '../models/home_container_model.dart';/// A controller class for the HomeContainerScreen.
///
/// This class manages the state of the HomeContainerScreen, including the
/// current homeContainerModelObj
class HomeContainerController extends GetxController {Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.profileSettingsPage, );Get.toNamed(AppRoutes.myLibraryPage, );Get.toNamed(AppRoutes.explorePage, ); } 
 }
