import '../models/paymentmethod_item_model.dart';
import '../controller/payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class PaymentmethodItemWidget extends StatelessWidget {
  PaymentmethodItemWidget(
    this.paymentmethodItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentmethodItemModel paymentmethodItemModelObj;

  var controller = Get.find<PaymentMethodController>();

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
              imagePath: paymentmethodItemModelObj.payPal!.value,
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
                paymentmethodItemModelObj.payPal1!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgContrastOnprimarycontainer,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
        ],
      ),
    );
  }
}
