import 'package:almohsen_s_application13/widgets/custom_outlined_button.dart';
import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/logout_controller.dart';

class LogoutBottomsheet extends StatelessWidget {
  LogoutBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  LogoutController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray1001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 27.v),
          Text(
            "lbl_logout".tr,
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 25.v),
          Text(
            "msg_are_you_sure_you".tr,
            style: CustomTextStyles.titleLargePrimary,
          ),
          SizedBox(height: 22.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "lbl_cancel".tr,
                  margin: EdgeInsets.only(right: 6.h),
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_yes_logout".tr,
                  margin: EdgeInsets.only(left: 6.h),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.v),
        ],
      ),
    );
  }
}
