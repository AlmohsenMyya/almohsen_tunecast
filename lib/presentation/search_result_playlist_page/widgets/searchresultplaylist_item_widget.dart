import '../models/searchresultplaylist_item_model.dart';
import '../controller/search_result_playlist_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultplaylistItemWidget extends StatelessWidget {
  SearchresultplaylistItemWidget(
    this.searchresultplaylistItemModelObj, {
    Key? key,
    this.onTapCardBig,
  }) : super(
          key: key,
        );

  SearchresultplaylistItemModel searchresultplaylistItemModelObj;

  var controller = Get.find<SearchResultPlaylistController>();

  VoidCallback? onTapCardBig;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onTapCardBig!.call();
            },
            child: Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: searchresultplaylistItemModelObj.image!.value,
                      height: 184.adaptSize,
                      width: 184.adaptSize,
                      radius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  SizedBox(
                    width: 162.h,
                    child: Obx(
                      () => Text(
                        searchresultplaylistItemModelObj.positions!.value,
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
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: searchresultplaylistItemModelObj.image1!.value,
                    height: 184.adaptSize,
                    width: 184.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                SizedBox(
                  width: 172.h,
                  child: Obx(
                    () => Text(
                      searchresultplaylistItemModelObj.positions1!.value,
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
      ],
    );
  }
}
