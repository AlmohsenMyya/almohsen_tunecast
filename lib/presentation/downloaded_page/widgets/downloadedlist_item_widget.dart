import '../models/downloadedlist_item_model.dart';
import '../controller/downloaded_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class DownloadedlistItemWidget extends StatelessWidget {
  DownloadedlistItemWidget(
    this.downloadedlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DownloadedlistItemModel downloadedlistItemModelObj;

  var controller = Get.find<DownloadedController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: downloadedlistItemModelObj.image!.value,
            height: 116.adaptSize,
            width: 116.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 235.h,
              child: Obx(
                () => Text(
                  downloadedlistItemModelObj.podcastTitle!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium!.copyWith(
                    height: 1.20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 7.v),
            Row(
              children: [
                Obx(
                  () => Text(
                    downloadedlistItemModelObj.author!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Obx(
                    () => Text(
                      downloadedlistItemModelObj.text!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Obx(
                    () => Text(
                      downloadedlistItemModelObj.time!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.v),
            SizedBox(
              width: 248.h,
              child: Row(
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: downloadedlistItemModelObj.image1!.value,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 6.v),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCategoriesPlaylist,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath:
                        ImageConstant.imgIconlyLightOutlineArrowGray90001,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCategoriesMore,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                  ),
                  Spacer(),
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(2.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconlyBoldPlay,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
