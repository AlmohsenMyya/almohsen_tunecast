import '../../../core/app_export.dart';import '../models/data_saver_storage_model.dart';/// A controller class for the DataSaverStorageScreen.
///
/// This class manages the state of the DataSaverStorageScreen, including the
/// current dataSaverStorageModelObj
class DataSaverStorageController extends GetxController {Rx<DataSaverStorageModel> dataSaverStorageModelObj = DataSaverStorageModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

Rx<bool> isSelectedSwitch2 = false.obs;

 }
