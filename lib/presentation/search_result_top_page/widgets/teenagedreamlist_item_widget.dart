import '../models/teenagedreamlist_item_model.dart';
import '../controller/search_result_top_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class TeenagedreamlistItemWidget extends StatelessWidget {
  TeenagedreamlistItemWidget(
    this.teenagedreamlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TeenagedreamlistItemModel teenagedreamlistItemModelObj;

  var controller = Get.find<SearchResultTopController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage53,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 18.v,
            bottom: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_teenage_dream".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 8.v),
              Text(
                "lbl_katy_perry".tr,
                style: theme.textTheme.labelLarge,
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
              imagePath: ImageConstant.imgOverflowMenuOnprimarycontainer,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVectorGray90001,
          height: 13.v,
          width: 3.h,
          margin: EdgeInsets.only(
            left: 28.h,
            top: 33.v,
            bottom: 33.v,
          ),
        ),
      ],
    );
  }
}
