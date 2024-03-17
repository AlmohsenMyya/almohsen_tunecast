import 'package:almohsen_s_application13/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application13/widgets/custom_switch.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/data_saver_storage_controller.dart';class DataSaverStorageScreen extends GetWidget<DataSaverStorageController> {const DataSaverStorageScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_data_saver".tr, style: theme.textTheme.titleLarge), SizedBox(height: 27.v), _buildAudioQuality(), SizedBox(height: 21.v), Text("lbl_podcasts".tr, style: theme.textTheme.titleLarge), SizedBox(height: 27.v), _buildDownloadAudioOnly(), SizedBox(height: 27.v), _buildStreamAudioOnly(), SizedBox(height: 24.v), Text("lbl_storage".tr, style: theme.textTheme.titleLarge), SizedBox(height: 23.v), _buildCache(cacheText: "lbl_other_apps".tr, filesizeText: "lbl_75_4_gb".tr), SizedBox(height: 24.v), _buildCache(cacheText: "lbl_cache".tr, filesizeText: "lbl_120_6_mb".tr), SizedBox(height: 27.v), _buildCache(cacheText: "lbl_free_space".tr, filesizeText: "lbl_50_5_gb".tr), SizedBox(height: 24.v), _buildRemoveAllDownloads(), SizedBox(height: 23.v), _buildClearCache(), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v)), title: AppbarTitle(text: "msg_data_saver_storage".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAudioQuality() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_audio_quality".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 4.v), SizedBox(width: 251.h, child: Text("msg_sets_your_audio".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallMedium.copyWith(height: 1.40)))]), Obx(() => CustomSwitch(margin: EdgeInsets.only(top: 19.v, bottom: 24.v), value: controller.isSelectedSwitch.value, onChange: (value) {controller.isSelectedSwitch.value = value;}))]); } 
/// Section Widget
Widget _buildDownloadAudioOnly() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_download_audio_only".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 6.v), Text("msg_save_video_podcasts".tr, style: CustomTextStyles.titleSmallMedium)]), Obx(() => CustomSwitch(margin: EdgeInsets.only(top: 9.v, bottom: 12.v), value: controller.isSelectedSwitch1.value, onChange: (value) {controller.isSelectedSwitch1.value = value;}))]); } 
/// Section Widget
Widget _buildStreamAudioOnly() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_stream_audio_only".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 4.v), SizedBox(width: 252.h, child: Text("msg_play_video_podcasts".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallMedium.copyWith(height: 1.40)))]), Obx(() => CustomSwitch(margin: EdgeInsets.only(top: 19.v, bottom: 24.v), value: controller.isSelectedSwitch2.value, onChange: (value) {controller.isSelectedSwitch2.value = value;}))]); } 
/// Section Widget
Widget _buildRemoveAllDownloads() { return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_remove_all_downloads".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 6.v), SizedBox(width: 278.h, child: Text("msg_remove_all_of_the".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallMedium.copyWith(height: 1.40)))])), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 81.h, top: 23.v, bottom: 26.v))]); } 
/// Section Widget
Widget _buildClearCache() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_clear_cache".tr, style: CustomTextStyles.titleMediumSemiBold_1), SizedBox(height: 6.v), SizedBox(width: 245.h, child: Text("msg_free_up_storage".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallMedium.copyWith(height: 1.40)))]), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 23.v, bottom: 26.v))]); } 
/// Common widget
Widget _buildCache({required String cacheText, required String filesizeText, }) { return Row(children: [Text(cacheText, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.gray90001)), Spacer(), Text(filesizeText, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.gray90001)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 20.h))]); } 
 }
