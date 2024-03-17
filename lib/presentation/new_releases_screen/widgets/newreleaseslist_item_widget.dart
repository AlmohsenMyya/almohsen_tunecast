import '../models/newreleaseslist_item_model.dart';
import '../controller/new_releases_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class NewreleaseslistItemWidget extends StatelessWidget {
  NewreleaseslistItemWidget(
    this.newreleaseslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NewreleaseslistItemModel newreleaseslistItemModelObj;

  var controller = Get.find<NewReleasesController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: newreleaseslistItemModelObj.positions!.value,
              height: 184.adaptSize,
              width: 184.adaptSize,
              radius: BorderRadius.circular(
                28.h,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Obx(
            () => Text(
              newreleaseslistItemModelObj.positions1!.value,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              newreleaseslistItemModelObj.arianaGrande!.value,
              style: CustomTextStyles.titleSmallGray70001,
            ),
          ),
        ],
      ),
    );
  }
}
