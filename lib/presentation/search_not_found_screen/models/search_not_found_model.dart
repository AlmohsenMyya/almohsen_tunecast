import '../../../core/app_export.dart';import 'searchnotfound_item_model.dart';/// This class defines the variables used in the [search_not_found_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchNotFoundModel {Rx<List<SearchnotfoundItemModel>> searchnotfoundItemList = Rx([SearchnotfoundItemModel(pillTab: "Top".obs),SearchnotfoundItemModel(pillTab: "Songs".obs),SearchnotfoundItemModel(pillTab: "Artists".obs),SearchnotfoundItemModel(pillTab: "Albums".obs),SearchnotfoundItemModel(pillTab: "Podcasts".obs),SearchnotfoundItemModel(pillTab: "Playlists".obs),SearchnotfoundItemModel(pillTab: "Profiles".obs)]);

 }
