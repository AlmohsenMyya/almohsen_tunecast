import '../models/trendingnowframe_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class TrendingnowframeItemWidget extends StatelessWidget {
  TrendingnowframeItemWidget(
    this.trendingnowframeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TrendingnowframeItemModel trendingnowframeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: trendingnowframeItemModelObj.image!.value,
                height: 160.adaptSize,
                width: 160.adaptSize,
                radius: BorderRadius.circular(
                  24.h,
                ),
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              width: 139.h,
              child: Obx(
                () => Text(
                  trendingnowframeItemModelObj.loremIpsumDolor!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMedium_1.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
