import '../models/trendingnow_item_model.dart';
import '../controller/trending_now_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class TrendingnowItemWidget extends StatelessWidget {
  TrendingnowItemWidget(
    this.trendingnowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TrendingnowItemModel trendingnowItemModelObj;

  var controller = Get.find<TrendingNowController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: trendingnowItemModelObj.image!.value,
            height: 188.v,
            width: 184.h,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
        ),
        SizedBox(height: 8.v),
        SizedBox(
          width: 182.h,
          child: Obx(
            () => Text(
              trendingnowItemModelObj.loremIpsumDolor!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMedium_1.copyWith(
                height: 1.40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
