import '../../../core/app_export.dart';import 'podcastlist_item_model.dart';/// This class defines the variables used in the [my_library_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyLibraryModel {Rx<List<PodcastlistItemModel>> podcastlistItemList = Rx([PodcastlistItemModel(theJordanHarb:ImageConstant.imgImage31.obs,billSullivan: "The Jordan Harb...".obs),PodcastlistItemModel(theJordanHarb:ImageConstant.imgImage32.obs,billSullivan: "Apple Talk".obs),PodcastlistItemModel(theJordanHarb:ImageConstant.imgImage33.obs,billSullivan: "Dr. Death".obs)]);

 }
