import 'package:almohsen_s_application13/presentation/follow_artists_screen/controller/follow_artists_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FollowArtistsScreen.
///
/// This class ensures that the FollowArtistsController is created when the
/// FollowArtistsScreen is first loaded.
class FollowArtistsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowArtistsController());
  }
}
