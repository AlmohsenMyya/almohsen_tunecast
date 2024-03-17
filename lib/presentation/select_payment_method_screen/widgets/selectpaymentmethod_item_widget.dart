import '../models/selectpaymentmethod_item_model.dart';
import '../controller/select_payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class SelectpaymentmethodItemWidget extends StatelessWidget {
  SelectpaymentmethodItemWidget(
    this.selectpaymentmethodItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectpaymentmethodItemModel selectpaymentmethodItemModelObj;

  var controller = Get.find<SelectPaymentMethodController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: selectpaymentmethodItemModelObj.payPal!.value,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 6.v,
              bottom: 3.v,
            ),
            child: Obx(
              () => Text(
                selectpaymentmethodItemModelObj.payPal1!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgContrastOnprimarycontainer,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgContrastOnprimarycontainer,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
