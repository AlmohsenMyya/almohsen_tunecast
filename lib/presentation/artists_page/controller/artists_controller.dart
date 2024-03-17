import '../../../core/app_export.dart';
import '../models/artists_model.dart';

/// A controller class for the ArtistsPage.
///
/// This class manages the state of the ArtistsPage, including the
/// current artistsModelObj
class ArtistsController extends GetxController {
  ArtistsController(this.artistsModelObj);

  Rx<ArtistsModel> artistsModelObj;
}
