import '../../../core/app_export.dart';import 'trendingnowframe_item_model.dart';import 'artistsframe_item_model.dart';import 'topchartslist_item_model.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {Rx<List<TrendingnowframeItemModel>> trendingnowframeItemList = Rx([TrendingnowframeItemModel(image:ImageConstant.imgImage.obs,loremIpsumDolor: "Shades of Love - Ania Szarmach".obs),TrendingnowframeItemModel(image:ImageConstant.imgImage160x160.obs,loremIpsumDolor: "Without You - The Kid LAROI".obs),TrendingnowframeItemModel(image:ImageConstant.imgImage1.obs,loremIpsumDolor: "Save Your Tears\nThe Weeknd & Ari".obs)]);

Rx<List<ArtistsframeItemModel>> artistsframeItemList = Rx([ArtistsframeItemModel(arianaGrande:ImageConstant.imgImage2.obs,artistsName: "Ariana Grande".obs),ArtistsframeItemModel(arianaGrande:ImageConstant.imgImage3.obs,artistsName: "The Weeknd".obs),ArtistsframeItemModel(arianaGrande:ImageConstant.imgImage4.obs,artistsName: "Acidrap".obs)]);

Rx<List<TopchartslistItemModel>> topchartslistItemList = Rx([TopchartslistItemModel(top:ImageConstant.imgImage5.obs,price: "TOP 100".obs,tOP1:ImageConstant.imgImage6.obs,price1: "TOP 50".obs,tOP2:ImageConstant.imgImage7.obs,price2: "TOP 100".obs,price3: "TOP 100 - Global".obs)]);

 }
