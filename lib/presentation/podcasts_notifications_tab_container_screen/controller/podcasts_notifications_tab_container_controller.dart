import '../../../core/app_export.dart';import '../models/podcasts_notifications_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the PodcastsNotificationsTabContainerScreen.
///
/// This class manages the state of the PodcastsNotificationsTabContainerScreen, including the
/// current podcastsNotificationsTabContainerModelObj
class PodcastsNotificationsTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<PodcastsNotificationsTabContainerModel> podcastsNotificationsTabContainerModelObj = PodcastsNotificationsTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
