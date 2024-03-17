import '../models/profiledetails_item_model.dart';
import '../controller/profile_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';

// ignore: must_be_immutable
class ProfiledetailsItemWidget extends StatelessWidget {
  ProfiledetailsItemWidget(
    this.profiledetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfiledetailsItemModel profiledetailsItemModelObj;

  var controller = Get.find<ProfileDetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: profiledetailsItemModelObj.image!.value,
              height: 184.adaptSize,
              width: 184.adaptSize,
              radius: BorderRadius.circular(
                28.h,
              ),
            ),
          ),
          SizedBox(height: 13.v),
          SizedBox(
            width: 162.h,
            child: Obx(
              () => Text(
                profiledetailsItemModelObj.positions!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMedium_1.copyWith(
                  height: 1.40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
