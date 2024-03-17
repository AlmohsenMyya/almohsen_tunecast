import '../models/artistsframe_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class ArtistsframeItemWidget extends StatelessWidget {
  ArtistsframeItemWidget(
    this.artistsframeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtistsframeItemModel artistsframeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Column(
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: artistsframeItemModelObj.arianaGrande!.value,
                  height: 160.adaptSize,
                  width: 160.adaptSize,
                  radius: BorderRadius.circular(
                    80.h,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Obx(
                () => Text(
                  artistsframeItemModelObj.artistsName!.value,
                  style: CustomTextStyles.titleMedium_1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
