import '../../../core/app_export.dart';import 'searchresultssongs_item_model.dart';/// This class defines the variables used in the [search_results_songs_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultsSongsModel {Rx<List<SearchresultssongsItemModel>> searchresultssongsItemList = Rx([SearchresultssongsItemModel(image:ImageConstant.imgImage54.obs,songTitle: "Starboy".obs,details: "The Weeknd, Daft Punk".obs),SearchresultssongsItemModel(image:ImageConstant.imgImage58.obs,songTitle: "The Hills".obs,details: "The Weeknd".obs),SearchresultssongsItemModel(image:ImageConstant.imgImage59.obs,songTitle: "I Feel It Coming".obs,details: "The Weeknd, Daft Punk".obs)]);

 }
