import 'package:almohsen_s_application13/presentation/artist_search_result_screen/controller/artist_search_result_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ArtistSearchResultScreen.
///
/// This class ensures that the ArtistSearchResultController is created when the
/// ArtistSearchResultScreen is first loaded.
class ArtistSearchResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArtistSearchResultController());
  }
}
