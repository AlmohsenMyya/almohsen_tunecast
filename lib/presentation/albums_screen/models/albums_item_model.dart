import '../../../core/app_export.dart';/// This class is used in the [albums_item_widget] screen.
class AlbumsItemModel {AlbumsItemModel({this.image, this.threeDimensions, this.details, this.text, this.zipcode, this.image1, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage86);threeDimensions = threeDimensions  ?? Rx("Three Dimensions Deep");details = details  ?? Rx("Amber Mark");text = text  ?? Rx("|");zipcode = zipcode  ?? Rx("2022");image1 = image1  ?? Rx(ImageConstant.imgCategoriesMore);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? threeDimensions;

Rx<String>? details;

Rx<String>? text;

Rx<String>? zipcode;

Rx<String>? image1;

Rx<String>? id;

 }
