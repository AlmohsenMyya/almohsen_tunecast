import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/payment_success_controller.dart';

class PaymentSuccessDialog extends StatelessWidget {
  PaymentSuccessDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.h,
      padding: EdgeInsets.all(32.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder48,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.v),
          SizedBox(
            height: 180.v,
            width: 185.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 141.adaptSize,
                    width: 141.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 45.h,
                      vertical: 48.v,
                    ),
                    decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder70,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserWhiteA700,
                      height: 43.v,
                      width: 49.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorGreen300,
                  height: 180.v,
                  width: 185.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 34.v),
          Text(
            "msg_congratulations".tr,
            style: CustomTextStyles.headlineSmallGreen500,
          ),
          SizedBox(height: 14.v),
          Container(
            width: 253.h,
            margin: EdgeInsets.symmetric(horizontal: 11.h),
            child: Text(
              "msg_you_have_successfully".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLarge16.copyWith(
                height: 1.40,
              ),
            ),
          ),
          SizedBox(height: 29.v),
          CustomElevatedButton(
            text: "lbl_ok".tr,
          ),
        ],
      ),
    );
  }
}
