import '../models/queue_item_model.dart';
import '../controller/queue_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class QueueItemWidget extends StatelessWidget {
  QueueItemWidget(
    this.queueItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  QueueItemModel queueItemModelObj;

  var controller = Get.find<QueueController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: queueItemModelObj.image!.value,
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
                  queueItemModelObj.podcastTitle!.value,
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
                    queueItemModelObj.author!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Obx(
                    () => Text(
                      queueItemModelObj.text!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Obx(
                    () => Text(
                      queueItemModelObj.time!.value,
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
                      imagePath: queueItemModelObj.image1!.value,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 6.v),
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: queueItemModelObj.image2!.value,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        top: 6.v,
                        bottom: 6.v,
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: queueItemModelObj.appleTalk!.value,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        top: 6.v,
                        bottom: 6.v,
                      ),
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
