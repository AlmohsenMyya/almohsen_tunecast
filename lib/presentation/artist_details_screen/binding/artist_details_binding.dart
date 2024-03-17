import 'package:almohsen_s_application13/presentation/artist_details_screen/controller/artist_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ArtistDetailsScreen.
///
/// This class ensures that the ArtistDetailsController is created when the
/// ArtistDetailsScreen is first loaded.
class ArtistDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArtistDetailsController());
  }
}
