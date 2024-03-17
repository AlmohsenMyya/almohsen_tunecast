import '../../../core/app_export.dart';import 'popularpodcastslist_item_model.dart';import 'artistslist_item_model.dart';import 'explorepodcastsgrid_item_model.dart';/// This class defines the variables used in the [podcasts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PodcastsModel {Rx<List<PopularpodcastslistItemModel>> popularpodcastslistItemList = Rx([PopularpodcastslistItemModel(image:ImageConstant.imgImage31.obs,billSullivan: "610: Bill Sullivan | Pleased to Meet ...".obs),PopularpodcastslistItemModel(image:ImageConstant.imgImage32.obs,billSullivan: "487: Mike Rowe | Dirty Jobs and Pe..".obs),PopularpodcastslistItemModel(image:ImageConstant.imgImage33.obs,billSullivan: "938: Tom Wright | Billion Dollar Wh...".obs)]);

Rx<List<ArtistslistItemModel>> artistslistItemList = Rx([ArtistslistItemModel(drDeath:ImageConstant.imgImage34.obs,artistsName: "Dr. Death".obs),ArtistslistItemModel(drDeath:ImageConstant.imgImage35.obs,artistsName: "Apple Talk".obs),ArtistslistItemModel(drDeath:ImageConstant.imgImage36.obs,artistsName: "What a Day".obs)]);

Rx<List<ExplorepodcastsgridItemModel>> explorepodcastsgridItemList = Rx([ExplorepodcastsgridItemModel(categories: "Charts".obs,charts:ImageConstant.imgImage91x81.obs),ExplorepodcastsgridItemModel(categories: "Podcasts".obs,charts:ImageConstant.imgImage37.obs),ExplorepodcastsgridItemModel(categories: "New Releases".obs,charts:ImageConstant.imgImage38.obs),ExplorepodcastsgridItemModel(categories: "Only You".obs,charts:ImageConstant.imgImage37.obs),ExplorepodcastsgridItemModel(categories: "Pop".obs,charts:ImageConstant.imgImage39.obs),ExplorepodcastsgridItemModel(categories: "K-Pop".obs,charts:ImageConstant.imgImage40.obs)]);

 }
