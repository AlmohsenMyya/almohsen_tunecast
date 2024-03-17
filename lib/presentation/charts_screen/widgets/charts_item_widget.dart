import '../models/charts_item_model.dart';
import '../controller/charts_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class ChartsItemWidget extends StatelessWidget {
  ChartsItemWidget(
    this.chartsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChartsItemModel chartsItemModelObj;

  var controller = Get.find<ChartsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 188.v,
            width: 184.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage5,
                  height: 188.v,
                  width: 184.h,
                  radius: BorderRadius.circular(
                    24.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 98.h,
                    child: Obx(
                      () => Text(
                        chartsItemModelObj.price!.value,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineSmallWhiteA700.copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              chartsItemModelObj.loremIpsumDolor!.value,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
