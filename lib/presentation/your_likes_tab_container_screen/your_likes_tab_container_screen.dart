import 'package:almohsen_s_application13/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application13/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application13/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_s_application13/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_application13/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:almohsen_s_application13/presentation/your_likes_page/your_likes_page.dart';
import 'package:almohsen_s_application13/presentation/queue_page/queue_page.dart';
import 'package:almohsen_s_application13/presentation/downloaded_page/downloaded_page.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/your_likes_tab_container_controller.dart';

// ignore_for_file: must_be_immutable
class YourLikesTabContainerScreen
    extends GetWidget<YourLikesTabContainerController> {
  const YourLikesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 31.v),
            child: Column(
              children: [
                _buildTabview(),
                SizedBox(
                  height: 797.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      YourLikesPage(),
                      QueuePage(),
                      DownloadedPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_podcasts".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 11.v,
            right: 11.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgSettingsGray90001,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 11.v,
            right: 35.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
      height: 39.v,
      width: double.maxFinite,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: theme.colorScheme.onPrimaryContainer,
        tabs: [
          Tab(
            child: Text(
              "lbl_your_likes".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_queue".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_downloaded".tr,
            ),
          ),
        ],
      ),
    );
  }
}
