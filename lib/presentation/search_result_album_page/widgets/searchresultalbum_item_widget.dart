import '../models/searchresultalbum_item_model.dart';
import '../controller/search_result_album_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultalbumItemWidget extends StatelessWidget {
  SearchresultalbumItemWidget(
    this.searchresultalbumItemModelObj, {
    Key? key,
    this.onTapCardBig,
  }) : super(
          key: key,
        );

  SearchresultalbumItemModel searchresultalbumItemModelObj;

  var controller = Get.find<SearchResultAlbumController>();

  VoidCallback? onTapCardBig;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCardBig!.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: searchresultalbumItemModelObj.sweetener!.value,
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
              searchresultalbumItemModelObj.positions!.value,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              searchresultalbumItemModelObj.arianaGrande!.value,
              style: CustomTextStyles.titleSmallGray70001,
            ),
          ),
          SizedBox(height: 7.v),
          Obx(
            () => Text(
              searchresultalbumItemModelObj.zipcode!.value,
              style: CustomTextStyles.titleSmallGray70001,
            ),
          ),
        ],
      ),
    );
  }
}
