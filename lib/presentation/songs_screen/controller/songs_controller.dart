import '../../../core/app_export.dart';import '../models/songs_model.dart';/// A controller class for the SongsScreen.
///
/// This class manages the state of the SongsScreen, including the
/// current songsModelObj
class SongsController extends GetxController {Rx<SongsModel> songsModelObj = SongsModel().obs;

 }
