import '../../../core/app_export.dart';import '../models/playlist_details_model.dart';/// A controller class for the PlaylistDetailsScreen.
///
/// This class manages the state of the PlaylistDetailsScreen, including the
/// current playlistDetailsModelObj
class PlaylistDetailsController extends GetxController {Rx<PlaylistDetailsModel> playlistDetailsModelObj = PlaylistDetailsModel().obs;

 }
