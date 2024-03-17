import '../models/followartistslist_item_model.dart';
import '../controller/follow_artists_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class FollowartistslistItemWidget extends StatelessWidget {
  FollowartistslistItemWidget(
    this.followartistslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FollowartistslistItemModel followartistslistItemModelObj;

  var controller = Get.find<FollowArtistsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: followartistslistItemModelObj.theWeeknd!.value,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 28.v,
            bottom: 29.v,
          ),
          child: Obx(
            () => Text(
              followartistslistItemModelObj.artistName!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesVerified,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 4.h,
            top: 28.v,
            bottom: 29.v,
          ),
        ),
        Spacer(),
        _buildFollowButton1(),
      ],
    );
  }

  /// Section Widget
  Widget _buildFollowButton1() {
    return CustomElevatedButton(
      height: 32.v,
      width: 73.h,
      text: "lbl_follow".tr,
      margin: EdgeInsets.symmetric(vertical: 24.v),
      buttonStyle: CustomButtonStyles.fillPrimaryTL16,
      buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
    );
  }
}
