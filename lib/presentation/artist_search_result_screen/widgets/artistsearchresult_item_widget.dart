import '../models/artistsearchresult_item_model.dart';
import '../controller/artist_search_result_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class ArtistsearchresultItemWidget extends StatelessWidget {
  ArtistsearchresultItemWidget(
    this.artistsearchresultItemModelObj, {
    Key? key,
    this.onTapArtist,
  }) : super(
          key: key,
        );

  ArtistsearchresultItemModel artistsearchresultItemModelObj;

  var controller = Get.find<ArtistSearchResultController>();

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
              imagePath: artistsearchresultItemModelObj.theWeeknd!.value,
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
                artistsearchresultItemModelObj.artistName!.value,
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
          _buildFollow(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollow() {
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
