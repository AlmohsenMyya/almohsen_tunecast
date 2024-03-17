import '../../../core/app_export.dart';import '../models/playlists_model.dart';/// A controller class for the PlaylistsScreen.
///
/// This class manages the state of the PlaylistsScreen, including the
/// current playlistsModelObj
class PlaylistsController extends GetxController {Rx<PlaylistsModel> playlistsModelObj = PlaylistsModel().obs;

 }
