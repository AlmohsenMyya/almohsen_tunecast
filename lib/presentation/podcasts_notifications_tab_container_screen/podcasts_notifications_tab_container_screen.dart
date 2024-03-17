import 'package:almohsen_s_application13/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application13/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:almohsen_s_application13/presentation/songs_notifications_page/songs_notifications_page.dart';import 'package:almohsen_s_application13/presentation/podcasts_notifications_page/podcasts_notifications_page.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/podcasts_notifications_tab_container_controller.dart';class PodcastsNotificationsTabContainerScreen extends GetWidget<PodcastsNotificationsTabContainerController> {const PodcastsNotificationsTabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 33.v), child: Column(children: [_buildTabview(), SizedBox(height: 847.v, child: TabBarView(controller: controller.tabviewController, children: [SongsNotificationsPage(), PodcastsNotificationsPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_notifications".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 9.v))]); } 
/// Section Widget
Widget _buildTabview() { return SizedBox(height: 39.v, width: double.maxFinite, child: TabBar(controller: controller.tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.onPrimaryContainer, labelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w400), unselectedLabelColor: appTheme.gray500, unselectedLabelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w400), indicatorColor: theme.colorScheme.onPrimaryContainer, tabs: [Tab(child: Text("lbl_songs".tr)), Tab(child: Text("lbl_podcasts".tr))])); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
 }
