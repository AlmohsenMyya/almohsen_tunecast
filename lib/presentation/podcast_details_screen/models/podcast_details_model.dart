import '../../../core/app_export.dart';import 'podcastdetails_item_model.dart';/// This class defines the variables used in the [podcast_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PodcastDetailsModel {Rx<List<PodcastdetailsItemModel>> podcastdetailsItemList = Rx([PodcastdetailsItemModel(image:ImageConstant.imgImage80x80.obs,podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...".obs,author: "Apple Talk".obs,text: "|".obs,time: "48:26 mins".obs,image1:ImageConstant.imgFavorite.obs),PodcastdetailsItemModel(image:ImageConstant.imgImage73.obs,podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design".obs,author: "What a Day".obs,text: "|".obs,time: "56:42 mins".obs,image1:ImageConstant.imgFavoriteOnprimarycontainer.obs)]);

 }
