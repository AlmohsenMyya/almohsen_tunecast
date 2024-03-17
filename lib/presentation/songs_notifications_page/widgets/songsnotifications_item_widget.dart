import '../models/songsnotifications_item_model.dart';
import '../controller/songs_notifications_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class SongsnotificationsItemWidget extends StatelessWidget {
  SongsnotificationsItemWidget(
    this.songsnotificationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SongsnotificationsItemModel songsnotificationsItemModelObj;

  var controller = Get.find<SongsNotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: songsnotificationsItemModelObj.today!.value,
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
            top: 2.v,
            bottom: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Obx(
                    () => Text(
                      songsnotificationsItemModelObj.today1!.value,
                      style: CustomTextStyles.labelLargeBold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Obx(
                      () => Text(
                        songsnotificationsItemModelObj.text!.value,
                        style: CustomTextStyles.labelLargeBold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Obx(
                      () => Text(
                        songsnotificationsItemModelObj.time!.value,
                        style: CustomTextStyles.labelLargeBold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.v),
              Obx(
                () => Text(
                  songsnotificationsItemModelObj.breakmysoul!.value,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 10.v),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Obx(
                      () => Text(
                        songsnotificationsItemModelObj.beyonce!.value,
                        style: CustomTextStyles.labelLargeBold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 11.h,
                      top: 1.v,
                    ),
                    child: Obx(
                      () => Text(
                        songsnotificationsItemModelObj.text1!.value,
                        style: CustomTextStyles.labelLargeBold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Obx(
                      () => Text(
                        songsnotificationsItemModelObj.album!.value,
                        style: CustomTextStyles.labelLargeBold,
                      ),
                    ),
                  ),
                ],
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
              imagePath: ImageConstant.imgIconlyBoldPlay,
            ),
          ),
        ),
        Obx(
          () => CustomImageView(
            imagePath: songsnotificationsItemModelObj.today2!.value,
            height: 13.v,
            width: 3.h,
            margin: EdgeInsets.only(
              left: 28.h,
              top: 33.v,
              bottom: 33.v,
            ),
          ),
        ),
      ],
    );
  }
}
