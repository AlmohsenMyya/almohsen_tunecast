import '../../../core/app_export.dart';import '../models/artist_details_model.dart';/// A controller class for the ArtistDetailsScreen.
///
/// This class manages the state of the ArtistDetailsScreen, including the
/// current artistDetailsModelObj
class ArtistDetailsController extends GetxController {Rx<ArtistDetailsModel> artistDetailsModelObj = ArtistDetailsModel().obs;

 }
