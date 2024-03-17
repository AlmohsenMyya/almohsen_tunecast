import '../models/explore_item_model.dart';
import '../controller/explore_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class ExploreItemWidget extends StatelessWidget {
  ExploreItemWidget(
    this.exploreItemModelObj, {
    Key? key,
    this.onTapExploreCard,
  }) : super(
          key: key,
        );

  ExploreItemModel exploreItemModelObj;

  var controller = Get.find<ExploreController>();

  VoidCallback? onTapExploreCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapExploreCard!.call();
      },
      child: Container(
        decoration: AppDecoration.gradientRedToOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 21.v,
                bottom: 76.v,
              ),
              child: Obx(
                () => Text(
                  exploreItemModelObj.categories!.value,
                  style: CustomTextStyles.titleMediumWhiteA700_1,
                ),
              ),
            ),
            Obx(
              () => CustomImageView(
                imagePath: exploreItemModelObj.charts!.value,
                height: 91.v,
                width: 81.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(
                  left: 27.h,
                  top: 29.v,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
