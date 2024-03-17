import 'widgets/queue_item_widget.dart';
import 'models/queue_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/queue_controller.dart';
import 'models/queue_model.dart';

class QueuePage extends StatelessWidget {
  QueuePage({Key? key})
      : super(
          key: key,
        );

  QueueController controller = Get.put(QueueController(QueueModel().obs));

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
                      _buildAutoLayoutHorizontal(),
                      SizedBox(height: 22.v),
                      Divider(),
                      SizedBox(height: 23.v),
                      _buildQueue(),
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
  Widget _buildAutoLayoutHorizontal() {
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
  Widget _buildQueue() {
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
        itemCount: controller.queueModelObj.value.queueItemList.value.length,
        itemBuilder: (context, index) {
          QueueItemModel model =
              controller.queueModelObj.value.queueItemList.value[index];
          return QueueItemWidget(
            model,
          );
        },
      ),
    );
  }
}
