import '../models/songplayoverscreen_item_model.dart';
import '../controller/song_play_over_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class SongplayoverscreenItemWidget extends StatelessWidget {
  SongplayoverscreenItemWidget(
    this.songplayoverscreenItemModelObj, {
    Key? key,
    this.onTapSongCard,
  }) : super(
          key: key,
        );

  SongplayoverscreenItemModel songplayoverscreenItemModelObj;

  var controller = Get.find<SongPlayOverScreenController>();

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 223.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              songplayoverscreenItemModelObj.image!.value,
                          height: 80.adaptSize,
                          width: 80.adaptSize,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 18.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => Text(
                                songplayoverscreenItemModelObj.songTitle!.value,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            SizedBox(height: 7.v),
                            Obx(
                              () => Text(
                                songplayoverscreenItemModelObj.details!.value,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: songplayoverscreenItemModelObj.image1!.value,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 24.v),
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: songplayoverscreenItemModelObj.image2!.value,
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
