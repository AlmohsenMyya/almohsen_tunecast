import 'package:almohsen_s_application13/presentation/home_page/home_page.dart';import 'package:almohsen_s_application13/presentation/explore_page/explore_page.dart';import 'package:almohsen_s_application13/presentation/my_library_page/my_library_page.dart';import 'package:almohsen_s_application13/presentation/profile_settings_page/profile_settings_page.dart';import 'package:almohsen_s_application13/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application13/core/app_export.dart';import 'controller/home_container_controller.dart';class HomeContainerScreen extends GetWidget<HomeContainerController> {const HomeContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Explore: return AppRoutes.explorePage; case BottomBarEnum.Library: return AppRoutes.myLibraryPage; case BottomBarEnum.Profile: return AppRoutes.profileSettingsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.explorePage: return ExplorePage(); case AppRoutes.myLibraryPage: return MyLibraryPage(); case AppRoutes.profileSettingsPage: return ProfileSettingsPage(); default: return DefaultWidget();} } 
 }
