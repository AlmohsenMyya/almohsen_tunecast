import 'package:almohsen_s_application13/widgets/custom_search_view.dart';
import 'widgets/searchtypekeywordlist_item_widget.dart';
import 'models/searchtypekeywordlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/search_type_keyword_controller.dart';

// ignore_for_file: must_be_immutable
class SearchTypeKeywordScreen extends GetWidget<SearchTypeKeywordController> {
  const SearchTypeKeywordScreen({Key? key})
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
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_abcdefghijklm".tr,
                contentPadding: EdgeInsets.only(
                  top: 19.v,
                  right: 30.h,
                  bottom: 19.v,
                ),
              ),
              SizedBox(height: 23.v),
              _buildAutoLayoutHorizontalRow(),
              SizedBox(height: 24.v),
              Divider(),
              SizedBox(height: 23.v),
              _buildSearchTypeKeywordList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontalRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_recent_searches".tr,
          style: theme.textTheme.titleLarge,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "lbl_clear_all".tr,
            style: CustomTextStyles.titleMediumOnPrimaryContainer16,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchTypeKeywordList() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 25.v,
          );
        },
        itemCount: controller.searchTypeKeywordModelObj.value
            .searchtypekeywordlistItemList.value.length,
        itemBuilder: (context, index) {
          SearchtypekeywordlistItemModel model = controller
              .searchTypeKeywordModelObj
              .value
              .searchtypekeywordlistItemList
              .value[index];
          return SearchtypekeywordlistItemWidget(
            model,
          );
        },
      ),
    );
  }
}
