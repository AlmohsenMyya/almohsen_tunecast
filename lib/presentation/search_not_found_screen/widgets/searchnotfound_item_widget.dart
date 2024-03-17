import '../models/searchnotfound_item_model.dart';
import '../controller/search_not_found_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class SearchnotfoundItemWidget extends StatelessWidget {
  SearchnotfoundItemWidget(
    this.searchnotfoundItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchnotfoundItemModel searchnotfoundItemModelObj;

  var controller = Get.find<SearchNotFoundController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 68.h,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Obx(
            () => Text(
              searchnotfoundItemModelObj.pillTab!.value,
              style: CustomTextStyles.titleMediumWhiteA700,
            ),
          ),
        ),
      ),
    );
  }
}
