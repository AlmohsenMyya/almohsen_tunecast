import '../models/topchartslist_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class TopchartslistItemWidget extends StatelessWidget {
  TopchartslistItemWidget(
    this.topchartslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TopchartslistItemModel topchartslistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: topchartslistItemModelObj.top!.value,
              height: 160.adaptSize,
              width: 160.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(bottom: 31.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 66.v,
              bottom: 96.v,
            ),
            child: Obx(
              () => Text(
                topchartslistItemModelObj.price!.value,
                style: CustomTextStyles.headlineSmallWhiteA700,
              ),
            ),
          ),
          Spacer(
            flex: 47,
          ),
          Obx(
            () => CustomImageView(
              imagePath: topchartslistItemModelObj.tOP1!.value,
              height: 160.adaptSize,
              width: 160.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(bottom: 31.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 66.v,
              bottom: 96.v,
            ),
            child: Obx(
              () => Text(
                topchartslistItemModelObj.price1!.value,
                style: CustomTextStyles.headlineSmallWhiteA700,
              ),
            ),
          ),
          Spacer(
            flex: 52,
          ),
          Column(
            children: [
              SizedBox(
                height: 160.adaptSize,
                width: 160.adaptSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath: topchartslistItemModelObj.tOP2!.value,
                        height: 160.adaptSize,
                        width: 160.adaptSize,
                        radius: BorderRadius.circular(
                          24.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Obx(
                        () => Text(
                          topchartslistItemModelObj.price2!.value,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.headlineSmallWhiteA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Obx(
                () => Text(
                  topchartslistItemModelObj.price3!.value,
                  style: CustomTextStyles.titleMedium_1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
