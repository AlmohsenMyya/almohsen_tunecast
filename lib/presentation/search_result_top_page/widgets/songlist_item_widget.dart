import '../models/songlist_item_model.dart';
import '../controller/search_result_top_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class SonglistItemWidget extends StatelessWidget {
  SonglistItemWidget(
    this.songlistItemModelObj, {
    Key? key,
    this.onTapSongCard,
  }) : super(
          key: key,
        );

  SonglistItemModel songlistItemModelObj;

  var controller = Get.find<SearchResultTopController>();

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
              imagePath: songlistItemModelObj.handsome!.value,
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
                    songlistItemModelObj.songTitle!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 9.v),
                Obx(
                  () => Text(
                    songlistItemModelObj.details!.value,
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
                  imagePath: songlistItemModelObj.overflowMenu!.value,
                ),
              ),
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: songlistItemModelObj.hANDSOME1!.value,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(
                left: 20.h,
                top: 30.v,
                bottom: 30.v,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
