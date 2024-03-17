import '../../../core/app_export.dart';import 'searchresultalbum_item_model.dart';/// This class defines the variables used in the [search_result_album_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultAlbumModel {Rx<List<SearchresultalbumItemModel>> searchresultalbumItemList = Rx([SearchresultalbumItemModel(sweetener:ImageConstant.imgImage70.obs,positions: "Sweetener".obs,arianaGrande: "Ariana Grande".obs,zipcode: "2018".obs),SearchresultalbumItemModel(sweetener:ImageConstant.imgImage184x184.obs,positions: "Dangerous Woman".obs,arianaGrande: "Ariana Grande".obs,zipcode: "2016".obs),SearchresultalbumItemModel(sweetener:ImageConstant.imgImage71.obs,positions: "Yours Truly".obs,arianaGrande: "Ariana Grande".obs,zipcode: "2013".obs),SearchresultalbumItemModel(sweetener:ImageConstant.imgImage72.obs,positions: "My Everything".obs,arianaGrande: "Ariana Grande".obs,zipcode: "2014".obs)]);

 }
