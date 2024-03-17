import 'widgets/songsnotifications_item_widget.dart';
import 'models/songsnotifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/songs_notifications_controller.dart';
import 'models/songs_notifications_model.dart';

class SongsNotificationsPage extends StatelessWidget {
  SongsNotificationsPage({Key? key})
      : super(
          key: key,
        );

  SongsNotificationsController controller =
      Get.put(SongsNotificationsController(SongsNotificationsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_new_music_release".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 20.v),
                      _buildSongsNotifications(),
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
  Widget _buildSongsNotifications() {
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
        itemCount: controller.songsNotificationsModelObj.value
            .songsnotificationsItemList.value.length,
        itemBuilder: (context, index) {
          SongsnotificationsItemModel model = controller
              .songsNotificationsModelObj
              .value
              .songsnotificationsItemList
              .value[index];
          return SongsnotificationsItemWidget(
            model,
          );
        },
      ),
    );
  }
}
