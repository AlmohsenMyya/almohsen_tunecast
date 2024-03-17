import '../../../core/app_export.dart';import '../models/new_releases_model.dart';/// A controller class for the NewReleasesScreen.
///
/// This class manages the state of the NewReleasesScreen, including the
/// current newReleasesModelObj
class NewReleasesController extends GetxController {Rx<NewReleasesModel> newReleasesModelObj = NewReleasesModel().obs;

 }
