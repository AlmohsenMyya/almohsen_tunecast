import 'package:almohsen_s_application13/presentation/song_details_screen/controller/song_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SongDetailsScreen.
///
/// This class ensures that the SongDetailsController is created when the
/// SongDetailsScreen is first loaded.
class SongDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SongDetailsController());
  }
}
