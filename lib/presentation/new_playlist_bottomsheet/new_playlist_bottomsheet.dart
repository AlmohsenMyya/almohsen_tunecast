import 'package:almohsen_s_application13/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application13/widgets/custom_drop_down.dart';
import 'package:almohsen_s_application13/widgets/custom_outlined_button.dart';
import 'package:almohsen_s_application13/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/new_playlist_controller.dart';

class NewPlaylistBottomsheet extends StatelessWidget {
  NewPlaylistBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  NewPlaylistController controller;

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
          SizedBox(height: 26.v),
          Text(
            "lbl_new_playlist".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 21.v),
          Divider(),
          SizedBox(height: 23.v),
          _buildLabelEditText(),
          SizedBox(height: 24.v),
          _buildDateEditText(),
          SizedBox(height: 24.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconBottom,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            hintText: "lbl_public".tr,
            items: controller.newPlaylistModelObj.value.dropdownItemList!.value,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(20.h, 18.v, 12.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEyeGray90001,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
          ),
          SizedBox(height: 24.v),
          Divider(),
          SizedBox(height: 23.v),
          _buildAutoLayoutHorizontalRow(),
          SizedBox(height: 28.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLabelEditText() {
    return CustomTextFormField(
      controller: controller.labelEditTextController,
      hintText: "msg_most_popular_songs".tr,
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL16,
      fillColor: appTheme.gray50,
    );
  }

  /// Section Widget
  Widget _buildDateEditText() {
    return CustomTextFormField(
      controller: controller.dateEditTextController,
      hintText: "msg_most_popular_songs2".tr,
      textInputAction: TextInputAction.done,
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL16,
      fillColor: appTheme.gray50,
    );
  }

  /// Section Widget
  Widget _buildCancelButton() {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_cancel".tr,
        margin: EdgeInsets.only(right: 6.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateButton() {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_create".tr,
        margin: EdgeInsets.only(left: 6.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontalRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCancelButton(),
        _buildCreateButton(),
      ],
    );
  }
}
