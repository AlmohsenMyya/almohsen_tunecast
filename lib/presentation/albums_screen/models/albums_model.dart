import '../../../core/app_export.dart';import 'albums_item_model.dart';/// This class defines the variables used in the [albums_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AlbumsModel {Rx<List<AlbumsItemModel>> albumsItemList = Rx([AlbumsItemModel(image:ImageConstant.imgImage86.obs,threeDimensions: "Three Dimensions Deep".obs,details: "Amber Mark".obs,text: "|".obs,zipcode: "2022".obs,image1:ImageConstant.imgCategoriesMore.obs),AlbumsItemModel(image:ImageConstant.imgImage88.obs,threeDimensions: "We Are The Apocalypse".obs,details: "Amber Mark".obs,text: "|".obs,zipcode: "2022".obs,image1:ImageConstant.imgCategoriesMore.obs),AlbumsItemModel(image:ImageConstant.imgImage89.obs,threeDimensions: "Otherness".obs,details: "Amber Mark".obs,text: "|".obs,zipcode: "2022".obs,image1:ImageConstant.imgCategoriesMore.obs),AlbumsItemModel(image1:ImageConstant.imgVectorGray90001.obs)]);

 }
