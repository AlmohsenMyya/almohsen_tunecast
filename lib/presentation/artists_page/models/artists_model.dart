import '../../../core/app_export.dart';import 'artistslist1_item_model.dart';/// This class defines the variables used in the [artists_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistsModel {Rx<List<Artistslist1ItemModel>> artistslist1ItemList = Rx([Artistslist1ItemModel(theWeeknd:ImageConstant.imgImage66.obs,artistName: "The Weeknd".obs,songsCounter: "20 Songs".obs),Artistslist1ItemModel(theWeeknd:ImageConstant.imgImage90.obs,artistName: "Ariana Grande".obs,songsCounter: "35 Songs".obs),Artistslist1ItemModel(theWeeknd:ImageConstant.imgImage91.obs,artistName: "Ania Szarmarch".obs,songsCounter: "15 Songs".obs),Artistslist1ItemModel(theWeeknd:ImageConstant.imgImage93.obs,artistName: "Ryan Jones".obs,songsCounter: "24 Songs".obs),Artistslist1ItemModel(theWeeknd:ImageConstant.imgImage94.obs,artistName: "Sweet Sexy Savage".obs,songsCounter: "20 Songs".obs)]);

 }
