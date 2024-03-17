import '../../../core/app_export.dart';import '../models/history_podcast_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the HistoryPodcastTabContainerScreen.
///
/// This class manages the state of the HistoryPodcastTabContainerScreen, including the
/// current historyPodcastTabContainerModelObj
class HistoryPodcastTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<HistoryPodcastTabContainerModel> historyPodcastTabContainerModelObj = HistoryPodcastTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
