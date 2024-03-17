import 'widgets/downloadedlist_item_widget.dart';
import 'models/downloadedlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/downloaded_controller.dart';
import 'models/downloaded_model.dart';

class DownloadedPage extends StatelessWidget {
  DownloadedPage({Key? key})
      : super(
          key: key,
        );

  DownloadedController controller =
      Get.put(DownloadedController(DownloadedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildHorizontalLayout(),
                      SizedBox(height: 22.v),
                      Divider(),
                      SizedBox(height: 23.v),
                      _buildDownloadedList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_sort_by".tr,
          style: theme.textTheme.titleLarge,
        ),
        Spacer(),
        Text(
          "lbl_recently_added".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer16,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIconlyCurvedSwap,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 12.h,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDownloadedList() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount: controller
            .downloadedModelObj.value.downloadedlistItemList.value.length,
        itemBuilder: (context, index) {
          DownloadedlistItemModel model = controller
              .downloadedModelObj.value.downloadedlistItemList.value[index];
          return DownloadedlistItemWidget(
            model,
          );
        },
      ),
    );
  }
}
