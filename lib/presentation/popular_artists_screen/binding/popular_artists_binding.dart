import 'package:almohsen_s_application13/presentation/popular_artists_screen/controller/popular_artists_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PopularArtistsScreen.
///
/// This class ensures that the PopularArtistsController is created when the
/// PopularArtistsScreen is first loaded.
class PopularArtistsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PopularArtistsController());
  }
}
