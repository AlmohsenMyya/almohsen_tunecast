import 'package:almohsen_s_application13/widgets/custom_search_view.dart';
import 'widgets/searchnotfound_item_widget.dart';
import 'models/searchnotfound_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/search_not_found_controller.dart';

// ignore_for_file: must_be_immutable
class SearchNotFoundScreen extends GetWidget<SearchNotFoundController> {
  const SearchNotFoundScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "lbl_abcdefghijklm2".tr,
                ),
              ),
              SizedBox(height: 24.v),
              _buildSearchNotFound(),
              SizedBox(height: 124.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup324,
                height: 250.v,
                width: 339.h,
              ),
              SizedBox(height: 39.v),
              Text(
                "lbl_not_found".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 13.v),
              Container(
                width: 342.h,
                margin: EdgeInsets.symmetric(horizontal: 42.h),
                child: Text(
                  "msg_sorry_the_keyword".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchNotFound() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 38.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount: controller.searchNotFoundModelObj.value
                .searchnotfoundItemList.value.length,
            itemBuilder: (context, index) {
              SearchnotfoundItemModel model = controller.searchNotFoundModelObj
                  .value.searchnotfoundItemList.value[index];
              return SearchnotfoundItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
