import '../../../core/app_export.dart';
import '../models/your_likes_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the YourLikesTabContainerScreen.
///
/// This class manages the state of the YourLikesTabContainerScreen, including the
/// current yourLikesTabContainerModelObj
class YourLikesTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<YourLikesTabContainerModel> yourLikesTabContainerModelObj =
      YourLikesTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
