import '../models/podcastlist_item_model.dart';
import '../controller/my_library_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class PodcastlistItemWidget extends StatelessWidget {
  PodcastlistItemWidget(
    this.podcastlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PodcastlistItemModel podcastlistItemModelObj;

  var controller = Get.find<MyLibraryController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: podcastlistItemModelObj.theJordanHarb!.value,
                  height: 160.adaptSize,
                  width: 160.adaptSize,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Obx(
                () => Text(
                  podcastlistItemModelObj.billSullivan!.value,
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
