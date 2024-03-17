import '../../../core/app_export.dart';import 'newreleaseslist_item_model.dart';import 'newreleasesgrid_item_model.dart';/// This class defines the variables used in the [new_releases_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewReleasesModel {Rx<List<NewreleaseslistItemModel>> newreleaseslistItemList = Rx([NewreleaseslistItemModel(positions:ImageConstant.imgImage184x184.obs,positions1: "Positions".obs,arianaGrande: "Ariana Grande".obs),NewreleaseslistItemModel(positions:ImageConstant.imgImage41.obs,positions1: "Motomami".obs,arianaGrande: "The Weeknd".obs)]);

Rx<List<NewreleasesgridItemModel>> newreleasesgridItemList = Rx([NewreleasesgridItemModel(pain:ImageConstant.imgImage42.obs,positions: "Pain".obs,arianaGrande: "Ryan Jones".obs),NewreleasesgridItemModel(pain:ImageConstant.imgImage43.obs,positions: "Shades of Love".obs,arianaGrande: "Ania Szarmach".obs),NewreleasesgridItemModel(pain:ImageConstant.imgImage44.obs,positions: "Pain".obs,arianaGrande: "Ryan Jones".obs),NewreleasesgridItemModel(pain:ImageConstant.imgImage45.obs,positions: "Shades of Love".obs,arianaGrande: "Ania Szarmach".obs)]);

 }
