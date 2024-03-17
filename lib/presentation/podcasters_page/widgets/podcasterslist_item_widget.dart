import '../models/podcasterslist_item_model.dart';
import '../controller/podcasters_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class PodcasterslistItemWidget extends StatelessWidget {
  PodcasterslistItemWidget(
    this.podcasterslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PodcasterslistItemModel podcasterslistItemModelObj;

  var controller = Get.find<PodcastersController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: podcasterslistItemModelObj.image!.value,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 17.v,
                  bottom: 14.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        podcasterslistItemModelObj.artistName!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Obx(
                      () => Text(
                        podcasterslistItemModelObj.episodesCounter!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesMore,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 36.h,
            top: 30.v,
            bottom: 30.v,
          ),
        ),
      ],
    );
  }
}
