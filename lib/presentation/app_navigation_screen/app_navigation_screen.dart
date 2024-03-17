import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "walkthrough".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.walkthroughScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Lets you in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.letsYouInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create New PIN".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createNewPinScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Set Fingerprint".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.setFingerprintScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Follow Artists".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.followArtistsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FIlled OTP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.filledOtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create New Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Podcasts Notifications - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .podcastsNotificationsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Trending Now".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trendingNowScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Popular Artists".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.popularArtistsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Charts".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chartsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Top Albums Global".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.topAlbumsGlobalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Podcasts".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.podcastsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "New Releases".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.newReleasesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Type Keyword".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchTypeKeywordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Not Found".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchNotFoundScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Song Play".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.songPlayScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Search Results Songs - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchResultsSongsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Song Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.songDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Lyrics".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.lyricsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Artist Search Result".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.artistSearchResultScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Artist Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.artistDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "album details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.albumDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Result Podcast".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchResultPodcastScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Podcast Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.podcastDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Podcast Episode Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.podcastEpisodeDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Playlist Details One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.playlistDetailsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Search Result Profile - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchResultProfileTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "History Podcast - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.historyPodcastTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Playlists".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.playlistsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Playlist Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.playlistDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Downloads".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.downloadsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Your Likes - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.yourLikesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Albums".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.albumsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Songs".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.songsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Artists - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.artistsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Subscribe".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subscribeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select Payment Method".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectPaymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Summary".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentSummaryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile Details One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileDetailsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification Settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Audio & Video".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.audioVideoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Playback".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.playbackScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Data Saver & Storage".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dataSaverStorageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Security".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.securityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
