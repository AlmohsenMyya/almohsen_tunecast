import '../../../core/app_export.dart';import '../models/charts_model.dart';/// A controller class for the ChartsScreen.
///
/// This class manages the state of the ChartsScreen, including the
/// current chartsModelObj
class ChartsController extends GetxController {Rx<ChartsModel> chartsModelObj = ChartsModel().obs;

 }
