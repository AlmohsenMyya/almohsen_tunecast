import '../../../core/app_export.dart';import '../models/my_library_model.dart';/// A controller class for the MyLibraryPage.
///
/// This class manages the state of the MyLibraryPage, including the
/// current myLibraryModelObj
class MyLibraryController extends GetxController {MyLibraryController(this.myLibraryModelObj);

Rx<MyLibraryModel> myLibraryModelObj;

@override void onReady() { Get.toNamed(AppRoutes.playlistsScreen, );Get.toNamed(AppRoutes.downloadsScreen, ); } 
 }
