import '../../../core/app_export.dart';import '../models/artists_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ArtistsTabContainerScreen.
///
/// This class manages the state of the ArtistsTabContainerScreen, including the
/// current artistsTabContainerModelObj
class ArtistsTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ArtistsTabContainerModel> artistsTabContainerModelObj = ArtistsTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
