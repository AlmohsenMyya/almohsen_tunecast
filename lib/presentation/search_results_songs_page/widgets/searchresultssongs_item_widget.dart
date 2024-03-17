import '../models/searchresultssongs_item_model.dart';
import '../controller/search_results_songs_controller.dart';
import 'package:almohsen_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultssongsItemWidget extends StatelessWidget {
  SearchresultssongsItemWidget(
    this.searchresultssongsItemModelObj, {
    Key? key,
    this.onTapSongTitle,
  }) : super(
          key: key,
        );

  SearchresultssongsItemModel searchresultssongsItemModelObj;

  var controller = Get.find<SearchResultsSongsController>();

  VoidCallback? onTapSongTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSongTitle!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 223.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: searchresultssongsItemModelObj.image!.value,
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          searchresultssongsItemModelObj.songTitle!.value,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Obx(
                        () => Text(
                          searchresultssongsItemModelObj.details!.value,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.v),
            child: CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(2.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconlyBoldPlay,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCategoriesMore,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 30.v,
              bottom: 30.v,
            ),
          ),
        ],
      ),
    );
  }
}
