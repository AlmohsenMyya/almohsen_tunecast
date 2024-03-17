import '../models/topalbumsgloballist_item_model.dart';
import '../controller/top_albums_global_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class TopalbumsgloballistItemWidget extends StatelessWidget {
  TopalbumsgloballistItemWidget(
    this.topalbumsgloballistItemModelObj, {
    Key? key,
    this.onTapSongCard,
  }) : super(
          key: key,
        );

  TopalbumsgloballistItemModel topalbumsgloballistItemModelObj;

  var controller = Get.find<TopAlbumsGlobalController>();

  VoidCallback? onTapSongCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSongCard!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 28.v,
              bottom: 29.v,
            ),
            child: Obx(
              () => Text(
                topalbumsgloballistItemModelObj.zero!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: topalbumsgloballistItemModelObj.image!.value,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
              margin: EdgeInsets.only(left: 27.h),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    topalbumsgloballistItemModelObj.songTitle!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 9.v),
                Obx(
                  () => Text(
                    topalbumsgloballistItemModelObj.details!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.v),
            child: Obx(
              () => CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(2.h),
                child: CustomImageView(
                  imagePath:
                      topalbumsgloballistItemModelObj.overflowMenu!.value,
                ),
              ),
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: topalbumsgloballistItemModelObj.image1!.value,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(
                left: 20.h,
                top: 28.v,
                bottom: 29.v,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
