import '../models/popularpodcastslist_item_model.dart';
import '../controller/podcasts_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class PopularpodcastslistItemWidget extends StatelessWidget {
  PopularpodcastslistItemWidget(
    this.popularpodcastslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PopularpodcastslistItemModel popularpodcastslistItemModelObj;

  var controller = Get.find<PodcastsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: popularpodcastslistItemModelObj.image!.value,
                  height: 160.adaptSize,
                  width: 160.adaptSize,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 150.h,
                child: Obx(
                  () => Text(
                    popularpodcastslistItemModelObj.billSullivan!.value,
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
      ),
    );
  }
}
