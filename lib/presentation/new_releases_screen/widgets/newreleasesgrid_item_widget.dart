import '../models/newreleasesgrid_item_model.dart';
import '../controller/new_releases_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class NewreleasesgridItemWidget extends StatelessWidget {
  NewreleasesgridItemWidget(
    this.newreleasesgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NewreleasesgridItemModel newreleasesgridItemModelObj;

  var controller = Get.find<NewReleasesController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: newreleasesgridItemModelObj.pain!.value,
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
            newreleasesgridItemModelObj.positions!.value,
            style: theme.textTheme.titleLarge,
          ),
        ),
        SizedBox(height: 7.v),
        Obx(
          () => Text(
            newreleasesgridItemModelObj.arianaGrande!.value,
            style: CustomTextStyles.titleSmallGray70001,
          ),
        ),
      ],
    );
  }
}
