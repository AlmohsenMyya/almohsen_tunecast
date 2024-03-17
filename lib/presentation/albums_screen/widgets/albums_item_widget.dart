import '../models/albums_item_model.dart';
import '../controller/albums_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class AlbumsItemWidget extends StatelessWidget {
  AlbumsItemWidget(
    this.albumsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AlbumsItemModel albumsItemModelObj;

  var controller = Get.find<AlbumsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: albumsItemModelObj.image!.value,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 19.v,
                  bottom: 16.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        albumsItemModelObj.threeDimensions!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Row(
                      children: [
                        Obx(
                          () => Text(
                            albumsItemModelObj.details!.value,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Obx(
                            () => Text(
                              albumsItemModelObj.text!.value,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Obx(
                            () => Text(
                              albumsItemModelObj.zipcode!.value,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => CustomImageView(
            imagePath: albumsItemModelObj.image1!.value,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 72.h,
              top: 30.v,
              bottom: 30.v,
            ),
          ),
        ),
      ],
    );
  }
}
