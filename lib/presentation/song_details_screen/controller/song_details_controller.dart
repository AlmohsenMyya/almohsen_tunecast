import '../../../core/app_export.dart';import '../models/song_details_model.dart';/// A controller class for the SongDetailsScreen.
///
/// This class manages the state of the SongDetailsScreen, including the
/// current songDetailsModelObj
class SongDetailsController extends GetxController {Rx<SongDetailsModel> songDetailsModelObj = SongDetailsModel().obs;

 }
