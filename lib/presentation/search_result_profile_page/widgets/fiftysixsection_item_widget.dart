import '../models/fiftysixsection_item_model.dart';
import '../controller/search_result_profile_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class FiftysixsectionItemWidget extends StatelessWidget {
  FiftysixsectionItemWidget(
    this.fiftysixsectionItemModelObj, {
    Key? key,
    this.onTapArtist,
  }) : super(
          key: key,
        );

  FiftysixsectionItemModel fiftysixsectionItemModelObj;

  var controller = Get.find<SearchResultProfileController>();

  VoidCallback? onTapArtist;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapArtist!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: fiftysixsectionItemModelObj.jennyWilson!.value,
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
              top: 17.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    fiftysixsectionItemModelObj.artistName!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 9.v),
                Obx(
                  () => Text(
                    fiftysixsectionItemModelObj.followersCounter!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          _buildArtistSection(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArtistSection() {
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
