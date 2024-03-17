import 'widgets/podcastsnotifications_item_widget.dart';
import 'models/podcastsnotifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/podcasts_notifications_controller.dart';
import 'models/podcasts_notifications_model.dart';

class PodcastsNotificationsPage extends StatelessWidget {
  PodcastsNotificationsPage({Key? key})
      : super(
          key: key,
        );

  PodcastsNotificationsController controller = Get.put(
      PodcastsNotificationsController(PodcastsNotificationsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_new_podcasts_release".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 22.v),
                      _buildPodcastsNotifications(),
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
  Widget _buildPodcastsNotifications() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount: controller.podcastsNotificationsModelObj.value
            .podcastsnotificationsItemList.value.length,
        itemBuilder: (context, index) {
          PodcastsnotificationsItemModel model = controller
              .podcastsNotificationsModelObj
              .value
              .podcastsnotificationsItemList
              .value[index];
          return PodcastsnotificationsItemWidget(
            model,
          );
        },
      ),
    );
  }
}
