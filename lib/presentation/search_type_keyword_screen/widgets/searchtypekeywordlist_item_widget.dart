import '../models/searchtypekeywordlist_item_model.dart';
import '../controller/search_type_keyword_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class SearchtypekeywordlistItemWidget extends StatelessWidget {
  SearchtypekeywordlistItemWidget(
    this.searchtypekeywordlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchtypekeywordlistItemModel searchtypekeywordlistItemModelObj;

  var controller = Get.find<SearchTypeKeywordController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Obx(
            () => Text(
              searchtypekeywordlistItemModelObj.arianaGrande!.value,
              style: CustomTextStyles.titleMediumGray600,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesXClose,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
