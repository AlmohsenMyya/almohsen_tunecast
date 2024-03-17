import 'package:almohsen_s_application13/widgets/custom_search_view.dart';
import 'package:almohsen_s_application13/presentation/search_result_profile_page/search_result_profile_page.dart';
import 'package:almohsen_s_application13/presentation/search_result_album_page/search_result_album_page.dart';
import 'package:almohsen_s_application13/presentation/search_result_playlist_page/search_result_playlist_page.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/search_result_profile_tab_container_controller.dart';

// ignore_for_file: must_be_immutable
class SearchResultProfileTabContainerScreen
    extends GetWidget<SearchResultProfileTabContainerController> {
  const SearchResultProfileTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "lbl_jenny".tr,
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(),
              SizedBox(
                height: 740.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    SearchResultProfilePage(),
                    SearchResultProfilePage(),
                    SearchResultAlbumPage(),
                    SearchResultAlbumPage(),
                    SearchResultPlaylistPage(),
                    SearchResultProfilePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 38.v,
      width: 633.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.circular(
            19.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_songs".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_artists".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_albums".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_podcasts".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_playlist".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_profile".tr,
            ),
          ),
        ],
      ),
    );
  }
}
