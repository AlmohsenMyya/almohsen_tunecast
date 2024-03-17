import 'package:almohsen_s_application13/presentation/data_saver_storage_screen/controller/data_saver_storage_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DataSaverStorageScreen.
///
/// This class ensures that the DataSaverStorageController is created when the
/// DataSaverStorageScreen is first loaded.
class DataSaverStorageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataSaverStorageController());
  }
}
