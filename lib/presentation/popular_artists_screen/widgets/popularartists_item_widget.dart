import '../models/popularartists_item_model.dart';
import '../controller/popular_artists_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class PopularartistsItemWidget extends StatelessWidget {
  PopularartistsItemWidget(
    this.popularartistsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PopularartistsItemModel popularartistsItemModelObj;

  var controller = Get.find<PopularArtistsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: popularartistsItemModelObj.arianaGrande!.value,
            height: 188.v,
            width: 184.h,
            radius: BorderRadius.circular(
              92.h,
            ),
          ),
        ),
        SizedBox(height: 9.v),
        Obx(
          () => Text(
            popularartistsItemModelObj.artistsName!.value,
            style: CustomTextStyles.titleMedium_1,
          ),
        ),
      ],
    );
  }
}
