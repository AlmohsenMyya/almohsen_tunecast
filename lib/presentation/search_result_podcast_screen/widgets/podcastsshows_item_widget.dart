import '../models/podcastsshows_item_model.dart';
import '../controller/search_result_podcast_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class PodcastsshowsItemWidget extends StatelessWidget {
  PodcastsshowsItemWidget(
    this.podcastsshowsItemModelObj, {
    Key? key,
    this.onTapPodcastCard,
  }) : super(
          key: key,
        );

  PodcastsshowsItemModel podcastsshowsItemModelObj;

  var controller = Get.find<SearchResultPodcastController>();

  VoidCallback? onTapPodcastCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapPodcastCard!.call();
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: podcastsshowsItemModelObj.theJordanHarb!.value,
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
                    podcastsshowsItemModelObj.billSullivan!.value,
                    style: CustomTextStyles.titleMedium_1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
