import '../../../core/app_export.dart';import 'popularartists_item_model.dart';/// This class defines the variables used in the [popular_artists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PopularArtistsModel {Rx<List<PopularartistsItemModel>> popularartistsItemList = Rx([PopularartistsItemModel(arianaGrande:ImageConstant.imgImage21.obs,artistsName: "Ariana Grande".obs),PopularartistsItemModel(arianaGrande:ImageConstant.imgImage22.obs,artistsName: "The Weeknd".obs),PopularartistsItemModel(arianaGrande:ImageConstant.imgImage23.obs,artistsName: "Acidrap".obs),PopularartistsItemModel(arianaGrande:ImageConstant.imgImage24.obs,artistsName: "Ryan Jones".obs)]);

 }
