import '../../../core/app_export.dart';import '../models/popular_artists_model.dart';/// A controller class for the PopularArtistsScreen.
///
/// This class manages the state of the PopularArtistsScreen, including the
/// current popularArtistsModelObj
class PopularArtistsController extends GetxController {Rx<PopularArtistsModel> popularArtistsModelObj = PopularArtistsModel().obs;

 }
