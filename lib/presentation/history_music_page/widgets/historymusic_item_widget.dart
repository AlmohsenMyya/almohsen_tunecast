import '../models/historymusic_item_model.dart';
import '../controller/history_music_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class HistorymusicItemWidget extends StatelessWidget {
  HistorymusicItemWidget(
    this.historymusicItemModelObj, {
    Key? key,
    this.onTapSongCard,
  }) : super(
          key: key,
        );

  HistorymusicItemModel historymusicItemModelObj;

  var controller = Get.find<HistoryMusicController>();

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
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: historymusicItemModelObj.image!.value,
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
                    top: 18.v,
                    bottom: 15.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          historymusicItemModelObj.songTitle!.value,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Obx(
                        () => Text(
                          historymusicItemModelObj.details!.value,
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
                      imagePath:
                          ImageConstant.imgOverflowMenuOnprimarycontainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: historymusicItemModelObj.image1!.value,
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
