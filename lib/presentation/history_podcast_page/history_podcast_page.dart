import 'widgets/historypodcast_item_widget.dart';
import 'models/historypodcast_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application13/core/app_export.dart';
import 'controller/history_podcast_controller.dart';
import 'models/history_podcast_model.dart';

class HistoryPodcastPage extends StatelessWidget {
  HistoryPodcastPage({Key? key})
      : super(
          key: key,
        );

  HistoryPodcastController controller =
      Get.put(HistoryPodcastController(HistoryPodcastModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildHistoryPodcast(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHistoryPodcast() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: controller.historyPodcastModelObj.value
                .historypodcastItemList.value.length,
            itemBuilder: (context, index) {
              HistorypodcastItemModel model = controller.historyPodcastModelObj
                  .value.historypodcastItemList.value[index];
              return HistorypodcastItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
