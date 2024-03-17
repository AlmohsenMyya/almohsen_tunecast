import '../models/artistslist_item_model.dart';
import '../controller/podcasts_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class ArtistslistItemWidget extends StatelessWidget {
  ArtistslistItemWidget(
    this.artistslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtistslistItemModel artistslistItemModelObj;

  var controller = Get.find<PodcastsController>();

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
                  imagePath: artistslistItemModelObj.drDeath!.value,
                  height: 160.adaptSize,
                  width: 160.adaptSize,
                  radius: BorderRadius.circular(
                    80.h,
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              Obx(
                () => Text(
                  artistslistItemModelObj.artistsName!.value,
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
