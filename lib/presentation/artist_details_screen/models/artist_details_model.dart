import '../../../core/app_export.dart';import 'artistdetails_item_model.dart';/// This class defines the variables used in the [artist_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistDetailsModel {Rx<List<ArtistdetailsItemModel>> artistdetailsItemList = Rx([ArtistdetailsItemModel(image:ImageConstant.imgImage60.obs,songTitle: "Starboy".obs,details: "The Weeknd, Daft Punk".obs)]);

 }
