import '../models/playlistdetailslist_item_model.dart';
import '../controller/playlist_details_one_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class PlaylistdetailslistItemWidget extends StatelessWidget {
  PlaylistdetailslistItemWidget(
    this.playlistdetailslistItemModelObj, {
    Key? key,
    this.onTapSongCard,
  }) : super(
          key: key,
        );

  PlaylistdetailslistItemModel playlistdetailslistItemModelObj;

  var controller = Get.find<PlaylistDetailsOneController>();

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
          Obx(
            () => CustomImageView(
              imagePath: playlistdetailslistItemModelObj.image!.value,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 17.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    playlistdetailslistItemModelObj.songTitle!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    playlistdetailslistItemModelObj.details!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.v),
            child: CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(2.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgOverflowMenuOnprimarycontainer,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCategoriesMore,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 30.v,
              bottom: 30.v,
            ),
          ),
        ],
      ),
    );
  }
}
